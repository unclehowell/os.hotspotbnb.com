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

# Self-Build Device to the stage of Mode Selector e.g. broadcasts ssid, hostname, set-up hosting & host the mode-selector menu

sh /var/WaveOS/modeless/features/cleanup.sh
sh /var/WaveOS/modeless/features/add-features.sh



