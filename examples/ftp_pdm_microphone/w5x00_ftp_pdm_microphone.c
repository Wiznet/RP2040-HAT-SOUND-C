/**
 * Copyright (c) 2021 WIZnet Co.,Ltd
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/**
 * ----------------------------------------------------------------------------------------------------
 * Includes
 * ----------------------------------------------------------------------------------------------------
 */
#include <stdio.h>

#include "port_common.h"

#include "wizchip_conf.h"
#include "w5x00_spi.h"

#include "ftpc.h"
#include "tusb.h"

//#include "pico/stdlib.h"
#include "pico/pdm_microphone.h"

/**
 * ----------------------------------------------------------------------------------------------------
 * Macros
 * ----------------------------------------------------------------------------------------------------
 */
/* Clock */
#define PLL_SYS_KHZ (133 * 1000)

/* Buffer */
#define ETHERNET_BUF_MAX_SIZE (1024 * 4)

/* WAV */
#define SAMPLE_RATE 4000
#define CHANNEL 1
#define BIT_RATE 16

/**
 * ----------------------------------------------------------------------------------------------------
 * Variables
 * ----------------------------------------------------------------------------------------------------
 */
/* Network */
static wiz_NetInfo g_net_info =
    {
        .mac = {0x00, 0x08, 0xDC, 0x12, 0x34, 0x56}, // MAC address
        .ip = {192, 168, 1, 10},                     // IP address
        .sn = {255, 255, 255, 0},                    // Subnet Mask
        .gw = {192, 168, 1, 1},                      // Gateway
        .dns = {8, 8, 8, 8},                         // DNS server
        .dhcp = NETINFO_STATIC                       // DHCP enable/disable
};

/* FTP */
static uint8_t g_ftp_buf[ETHERNET_BUF_MAX_SIZE] = {
    0,
};

// Microphone configuration
const struct pdm_microphone_config config = {
    // GPIO pin for the PDM DAT signal
    .gpio_data = 2,

    // GPIO pin for the PDM CLK signal
    .gpio_clk = 3,

    // PIO instance to use
    .pio = pio0,

    // PIO State Machine instance to use
    .pio_sm = 0,

    // sample rate in Hz
    .sample_rate = SAMPLE_RATE,

    // number of samples to buffer
    .sample_buffer_size = 512,
};

/* Microphone */
int16_t sample_buffer[512];
volatile int samples_read = 0;
volatile int flag = 0;

/**
 * ----------------------------------------------------------------------------------------------------
 * Functions
 * ----------------------------------------------------------------------------------------------------
 */
/* Clock */
static void set_clock_khz(void);
/* Read mic buffer */
void on_pdm_samples_ready();

/**
 * ----------------------------------------------------------------------------------------------------
 * WAVE header
 * ----------------------------------------------------------------------------------------------------
 */
typedef struct
{
    unsigned char ChunkID[4]; //'RIFF'
    unsigned int ChunkSize;   // filesize
    unsigned char Format[4];  //'WAVE'
} RIFF;

typedef struct
{
    unsigned char ChunkID[4];    //'fmt'
    unsigned int ChunkSize;      // 16
    unsigned short AudioFormat;  // 1
    unsigned short NumChannels;  // 1
    unsigned int SampleRate;     // 4000
    unsigned int AvgByteRate;    // 8000
    unsigned short BlockAlign;   // 2
    unsigned short BitPerSample; // 16
} FMT;

typedef struct
{
    char ChunkID[4];        //"data"
    unsigned int ChunkSize; // PDM dat size
} DATA;

typedef struct
{
    RIFF Riff;
    FMT Fmt;
    DATA Data;
} WAVE_HEADER;

/**
 * ----------------------------------------------------------------------------------------------------
 * Main
 * ----------------------------------------------------------------------------------------------------
 */
int main()
{
    /* Network Initialize */
    uint8_t retval = 0;
    uint16_t lineCnt = 0;

    // PDM Microphone value
    //  int16_t PDM_dat[4096] = {0,};
    uint8_t *PDM_dat = NULL;
    int32_t pdm_length = 0;
    int32_t buf_length = 0;
    uint8_t *temp_PDM_dat = NULL;
    uint16_t temp_PDM[512] = {0, 0};
    WAVE_HEADER header;

    PDM_dat = (uint8_t *)malloc(sizeof(uint8_t) * 81920); // 80k allocation
    if (PDM_dat == NULL)
        exit(1);

    memset(PDM_dat, 0, sizeof(uint8_t) * 81920);

    /* WAV header set */
    memcpy(header.Riff.ChunkID, "RIFF", 4);
    header.Riff.ChunkSize = 81920;
    memcpy(header.Riff.Format, "WAVE", 4);

    memcpy(header.Fmt.ChunkID, "fmt ", 4);
    header.Fmt.ChunkSize = 0x10;
    header.Fmt.AudioFormat = 1;          // PCM
    header.Fmt.NumChannels = CHANNEL;    // 1
    header.Fmt.SampleRate = SAMPLE_RATE; // 4000
    header.Fmt.AvgByteRate = 8000;
    header.Fmt.BlockAlign = 2;
    header.Fmt.BitPerSample = BIT_RATE;

    memcpy(header.Data.ChunkID, "data", 4);
    header.Data.ChunkSize = 81920;

    // temp_PDM_dat = PDM_dat;
    /* Initialize chosen serial port*/
    stdio_init_all();
    sleep_ms(1000 * 3); // serial port delay

    /* GPIO Button */
    int bnt_tog = 0;
    const uint BUTTON_PIN = 15;
    gpio_init(BUTTON_PIN);
    gpio_set_dir(BUTTON_PIN, GPIO_IN);
    gpio_pull_up(BUTTON_PIN);

    /*GPIO LED*/
    const uint LED_PIN = PICO_DEFAULT_LED_PIN;
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    set_clock_khz();

    wizchip_spi_initialize();
    wizchip_cris_initialize();

    wizchip_reset();
    wizchip_initialize();
    wizchip_check();

    network_initialize(g_net_info);

    ftpc_init(g_net_info.ip);

    /* Get network information */
    print_network_information(g_net_info);

    // initialize stdio and wait for USB CDC connect
    while (!tud_cdc_connected())
    {
        tight_loop_contents();
    }

    printf("::Press the button to start recording::\n");

    // initialize the PDM microphone
    if (pdm_microphone_init(&config) < 0)
    {
        printf("PDM microphone initialization failed!\n");
        while (1)
        {
            tight_loop_contents();
        }
    }

    // set callback that is called when all the samples in the library
    // internal sample buffer are ready for reading
    pdm_microphone_set_samples_ready_handler(on_pdm_samples_ready);

    // start capturing data from the PDM microphone
    if (pdm_microphone_start() < 0)
    {
        printf("PDM microphone start failed!\n");
        while (1)
        {
            tight_loop_contents();
        }
    }

    /* Infinite loop */
    while (1)
    {
        if (!gpio_get(BUTTON_PIN))
        {
            gpio_put(LED_PIN, 1);
            // wait for new samples
            while (samples_read == 0)
            {
                tight_loop_contents();
            }

            // store and clear the samples read from the callback
            int sample_count = samples_read;
            samples_read = 0;

            printf("Audio recording \r\n");
            while (1)
            {
                if (flag == 0)
                    continue;
                memcpy(temp_PDM, sample_buffer, sizeof(int16_t) * 512);
                printf("#");
                flag = 0;
                for (int i = 0; i < sample_count; i++)
                {
                    /* little endian*/
                    PDM_dat[pdm_length + (i * 2)] = temp_PDM[i] & 0xff;
                    PDM_dat[pdm_length + (i * 2 + 1)] = (temp_PDM[i] >> 8) & 0x00ff;
                }
                /* print recording Data */
                // for (int i = 0; i < sample_count; i++)
                // {
                //     printf("[%4d] [%5d] data:(%04x %02x%02x) pdm_0x%d, Sbuf_0x%d\r\n", buf_length + i, sample_buffer[i], temp_PDM[i], PDM_dat[pdm_length + (i * 2)], PDM_dat[pdm_length + (i * 2 + 1)], &PDM_dat[pdm_length + i], &sample_buffer[i]);
                // }

                pdm_length += 1024;         // 1k
                buf_length += sample_count; // 512
                if (pdm_length >= 81920)
                {
                    bnt_tog = 1;
                    gpio_put(LED_PIN, 0);
                    memcpy(PDM_dat, &header, sizeof(header)); // Attach WAV header
                    printf("\r\nrecording done\r\n");

                    break;
                }
                // if(gpio_get(BUTTON_PIN)){
                //     bnt_tog = 1;
                //     gpio_put(LED_PIN, 0);
                //     printf("read done\r\n");
                //     break;
                // }
            }
            printf("::total pdm_length : %d bytes::\n", pdm_length);
        }
        else
        {
            bnt_tog = 0;
        }
        while (bnt_tog)
        {
            /* Run FTP client */
            if ((retval = ftpc_run(g_ftp_buf, PDM_dat, pdm_length)) < 0)
            {
                printf(" FTP client error : %d\n", retval);
                while (1)
                    ;
            }
        }
    }
    free(PDM_dat);
}

/**
 * ----------------------------------------------------------------------------------------------------
 * Functions
 * ----------------------------------------------------------------------------------------------------
 */
/* Clock */
static void set_clock_khz(void)
{
    // set a system clock frequency in khz
    set_sys_clock_khz(PLL_SYS_KHZ, true);

    // configure the specified clock
    clock_configure(
        clk_peri,
        0,                                                // No glitchless mux
        CLOCKS_CLK_PERI_CTRL_AUXSRC_VALUE_CLKSRC_PLL_SYS, // System PLL on AUX mux
        PLL_SYS_KHZ * 1000,                               // Input frequency
        PLL_SYS_KHZ * 1000                                // Output (must be same as no divider)
    );
}

/* PDM ready*/
void on_pdm_samples_ready()
{
    // callback from library when all the samples in the library
    // internal sample buffer are ready for reading
    samples_read = pdm_microphone_read(sample_buffer, 512);
    if (samples_read > 0)
        flag = 1;
}