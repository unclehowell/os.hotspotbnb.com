# Simple Start Guide

a) Download the WaveOS pre-configured SD Card image from this link: ###########
* (The latest Wave Operating System (for the Raspberry Pi 3 - Armhf) is in the process of being compiled and compressed for a one-click download and installation and is scheduled to be published here before March 2018)

b) use Etcher or Win32 to burn to a 32GB Micro SD Card. 

c) Insert the SD Card into the Raspberry Pi and power it up.

d) Connect to the Wi-Fi Hotspot using the default password (makeitwave)

e) Once connected enter the hostname 'wave/' into your web browser

Manually Configuration: 

# Manual Configuration: Step 1
a) Download DietPi - http://dietpi.com/downloads/images/DietPi_RPi-ARMv6-Stretch.7z

b) Extract the Disc Image File

c) Burn the Disc Image to a 32GB Micro SD Card (using a program like Win32 - https://sourceforge.net/projects/win32diskimager/)

d) Place in a Raspberry Pi 3 (Armhf) and boot up the Raspberry Pi

# Manual Configuration: Step 2

a) SSH into the hotspot using the default ip (cmd command: arp -a should find it)

d) Enter the default username and password (dietpi:dietpi)

c) Enter admin mode with the command (sudo su)

d) Install the OpenHab-Configuration Menu:
  - sudo apt-get update
  - sudo apt-get install git
  - sudo git clone https://github.com/openhab/openhabian.git /opt/openhabian
  - sudo ln -s /opt/openhabian/openhabian-setup.sh /usr/local/bin/openhabian-config
  - sudo openhabian-config
  
....more coming 
