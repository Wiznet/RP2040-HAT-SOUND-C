# How to Test Example



## Step 1: Prepare software

The following serial terminal program and FTP server are required for FTP Client example test, download and install from below links.

- [**Tera Term**][link-tera_term]
- [**FileZilla Server Interface**][link-filezilla_server]



## Step 2: Connectivity Configuration

- Connect the PDM microphone and the Tact switch.

![][link-pin_connectivity]



## Step 3: Setup FileZilla Server program

The following serial terminal program and FTP server are required for FTP Client example test, download and install from below links.

- Execute FileZilla server program and open FTP server.

![][link-Filezilla_server_1]



- Set up the client to connect before opening the server

![][link-Filezilla_server_2]



- Enter the IP of the PC or server that you are currently using

![][link-Filezilla_server_3]



- Create an accessible **USER ID** and set the path to the PC

![][link-Filezilla_server_4]

![][link-Filezilla_server_5]



## Step 4: Build

1. After completing the ftp_client example configuration, click 'build' in the status bar at the bottom of Visual Studio Code or press the 'F7' button on the keyboard to build.

2. When the build is completed, 'w5x00_ftp_client.uf2' is generated in 'RP2040-HAT-C/build/examples/ftp/client' directory.



## Step 5: Upload and Run

**w5x00_ftp_client.uf2 Firmware Upload**

- While pressing the BOOTSEL button of Raspberry Pi Pico, W5100S-EVB-Pico or W5500-EVB-Pico power on the board, the USB mass storage 'RPI-RP2' is automatically mounted.

![][link-uf2_upload]



- Drag and drop 'w5x00_ftp_client.uf2' onto the USB mass storage device 'RPI-RP2
- Connect to the serial COM port of Raspberry Pi Pico, W5100S-EVB-Pico or W5500-EVB-Pico with Tera Term.

![][link-teraterm]



- Connect to the serial COM port of Raspberry Pi Pico, W5100S-EVB-Pico or W5500-EVB-Pico with Tera Term.



**Microphone FTP Run**

- Once the ***Teraterm*** serial terminal is connected normally, information about the network will be printed as shown below. Also, we are waiting for a microphone recording.

![][link-ftp_run_1]



- If you press the Tack switch, the microphone will have sound. In the example file, it will **record for 10 seconds**, and after the recording, it will be connected to the **Filezilla Server**.

![][link-ftp_run_2]

- Ask for **ID** and **password** to connect to the server. Enter the ID and password set in Filezilla to connect to the server normally.

![][link-ftp_run_3]

- All we have to do is send the music file. When you press "**D**", look up the files on the server. If you **press another key**, you will be able to be transmitted. There are currently no files, so nothing appears

![][link-ftp_run_4]

- Ask for files to transfer to the server. Paste the WAV extension to the file you want to send to the server.

![][link-ftp_run_5]

- If you press the "D" key again to verify that it was sent successfully, you can check the "test.wav" file stored on the server.

![][link-ftp_run_6]

- FTP: **Checking on the server shows that it is saved normally.**

![][link-get_wav]





<!--
Link
-->

[link-tera_term]: https://osdn.net/projects/ttssh2/releases/
[link-filezilla_server]: https://filezilla-project.org/
[link-pin_connectivity]: https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/pin_connectivity.png
[link-Filezilla_server_1]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/Filezilla_server_1.png
[link-Filezilla_server_2]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/Filezilla_server_2.png
[link-Filezilla_server_3]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/Filezilla_server_3.png
[link-Filezilla_server_4]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/Filezilla_server_4.png
[link-Filezilla_server_5]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/Filezilla_server_5.png
[link-uf2_upload]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/uf2_upload.png
[link-teraterm]: https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/teraterm.png
[link-ftp_run_1]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/ftp_run_1.png
[link-ftp_run_2]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/ftp_run_2.png
[link-ftp_run_3]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/ftp_run_3.png
[link-ftp_run_4]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/ftp_run_4.png
[link-ftp_run_5]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/ftp_run_5.png
[link-ftp_run_6]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/ftp_run_6.png
[link-get_wav]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/get_wav.png

