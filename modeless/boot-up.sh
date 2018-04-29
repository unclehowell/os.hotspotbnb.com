#!/usr/bin/env bash
# Author: Hywel ApBuckler

# security certificates failed in past with web-browser and updates during initial boot-up because of time-sync issues e.g. time was wrong.
# this should be sorted within the dietpi.txt file, but just in case this is worth getting right early as possible. 
# also, dietpi talk about making it redundant. so watch this space.

timedatectl set-ntp true

# if for any reason the kernel update fails

G_RPI_UPDATE
rpi-update

# get script, run script: fetch the latest repo (so remaining tasks can then execute from the local repo), then remove all trace

# Remove the old Repo Achieve File - if it exists & make a new one
rm -r /var/WaveOS-old -y
mkdir /var/WaveOS-old

# if there is a copy of the repo locally, move it to old (if it exists)
mv /var/WaveOS /var/WaveOS-old

# retrieve the latest repo (master branch) and put into the /var directory
cd /var
git clone https://github.com/unclehowell/WaveOS.git
chmod +x /var/WaveOS
chmod +x /var/WaveOS/modeless/features/*

# Self-Build Device to the stage of Mode Selector e.g. broadcasts ssid, hostname, set-up hosting & host the mode-selector menu

sh /var/WaveOS/modeless/features/cleanup.sh

# 1) Hosting: The Pi will need to have hosting capabilities so that the menu can be hosted

sh /var/WaveOS/modeless/features/hosting.sh

# 2) Then the menu needs to be placed into the www/ directory so it appears in the browser when the hostname is entered

sh /var/WaveOS/modeless/features/multistep-menu/run.sh

# 3) Then we need to get the menu up on the screen to make it even more obvious that a mode needs to be selected from the menu
# instead of trying to get guacamole working (so the users can control what's on the screen), the menu on the screen just needs to instruct hostname access via a mobile etc

sh /var/WaveOS/modeless/features/kiosk-mode/run.sh


# The IP will need to change to avoid conflic with a 2nd, 3rd device which may connect to the network. 
# For this to happen, we may need to scan the network, see which IP's are available and allocate one as as fixed-IP. Solution Needed Here!



