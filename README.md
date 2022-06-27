# RP2040-HAT-FTP-Transfer

![][link-transfer]



### OUTLINE

**W5100S-EVB-Pico**

W5100S-EVB-Pico pinout is directly connected to the GPIO of RP2040 as shown in the picture above. It has the same pinout as the Raspberry Pi Pico board. However, GPIO16, GPIO17, GPIO18, GPIO19, GPIO20, GPIO21 are connected to W5100S inside the board. These pins enable SPI communication with W5100S to use Ethernet function. If you are using the Ethernet function, these pins cannot be used for any other purpose.

![][link-w5100s-evb-pico]

![][link-w5100s-evb-pico-pinout]







**Adafruit** **PDM_Microphone**

![][link-Adafruit_pdm-microphone]



- **3V -** This is the power input pin, this powers the chip directly. Use a quiet power supply pin if available. (The chip supports 1.8-3.3V but we have not tested it at 1.8V)
- **GND** - Power and data ground reference
- **SEL** - Left/Right select. If this pin is high, the output is on the falling edge of CLK considered the 'Right' channel. If this pin is low, the output is on the rising edge, a.k.a 'Left' channel.
- **CLK** - PDM clock in, 1 - 3 MHz square wave required
- **DAT** - PDM data out.



![][link-pdm_pulse]

it's great for chips that do not have analog inputs. Secondly, the digital interface is a very simplistic **P**ulse **D**ensity **M**odulation output. It's digital but its *not* PWM and it's *not* I2S. PDM is a little like 1-bit PWM. You clock the mic with a 1 MHz - 3 MHz clock rate, and on the data line you'll get a square wave out that syncs with the clock. The data line with be 0 or 1 logic output, with the square wave creating a density that when averaged will result in the analog value out.





### EXPLANATION

**FTP?(File Transfer Protocol)**

![][link-ftp_client_connection_1]

**FTP** communication creates two connections between the server and the client, one for sending and receiving signals to control, and the other for actual data (file) transmission.



**FTP Movement**

![][link-ftp_client_connection_2]

\1. Connect to port 21 on the client server and inform the server of the second port you will use.

\2. The server responds to the client request.

\3. The server's data port 20 attempts to access the second port that the client has informed.

\4. The client responds to the server.



**WAV Audio formant?**

![][link-wav_audio]

Waveform Audio File Format (WAVE or WAV due to its filename extension pronounced "wave") is an audio file format standard, developed by IBM and Microsoft, for storing an audio bitstream on PCs. It is the main format used on Microsoft Windows systems for uncompressed audio.



**Use standard WAVE format**

![][link-wav_format]

A RIFF file starts out with a file header followed by a sequence of data chunks. A WAVE file is often just a RIFF file with a single "**WAVE**" chunk which consists of two sub-chunks -- a "**fmt** " chunk specifying the data format and a "**data**" chunk containing the actual sample data. Call this form the "Canonical form".

http://soundfile.sapp.org/doc/WaveFormat/



### ENVIRONMENT

**Building a C Environment in Windows**

Before starting, it is necessary to setup your environment for W5100S-EVB-Pico. It is same as development environment for Raspberry Pi Pico.

In this guide I used **Windows 10**, **Visual Studio Code** and **C/C++** based environment. For environment preparation I referred to **Getting started with Raspberry Pi Pico** guide on Raspberry Pi documentation website.

- [Raspberry Pi documentation](https://www.raspberrypi.com/documentation/microcontrollers/raspberry-pi-pico.html)
- [Getting started with Raspberry Pi Pico](https://datasheets.raspberrypi.com/pico/getting-started-with-pico.pdf)









<!--
Link
-->

[link-transfer]: https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/FTP%20Transfer.png
[link-w5100s-evb-pico]: https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/w5100s-evb-pico.png
[link-w5100s-evb-pico-pinout]: https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/w5100s-evb-pico-pinout.png
[link-Adafruit_pdm-microphone]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/Adafruit_pdm-microphone.png
[link-pdm_pulse]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/pdm_pulse.png
[link-ftp_client_connection_1]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/ftp_client_connection_1.png
[link-ftp_client_connection_2]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/ftp_client_connection_2.png
[link-wav_audio]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/wav_audio.png

[link-wav_format]:https://github.com/Wiznet/RP2040-HAT-SOUND-C/blob/FTP-Microphone/static/images/ftp_pdm_microphone/wav_format.png

