#!/usr/bin/env bash
# Author: Hywel ApBuckler

# get script, run script: fetch the latest repo (so remaining tasks can then execute from the local repo), then remove all trace

# Remove the old Repo Achieve File - if it exists & make a new one
rm -r WaveOS-old
mkdir WaveOS-old

# if there is a copy of the repo locally, move it to old (if it exists)
mv /var/WaveOS /var/WaveOS-old

# remove content of the repo archieve (incase there's a few piled up)
rm -r /var/WaveOS-old/*

# retrieve the latest repo (master branch) and put into the /var directory
cd /var
git clone https://github.com/unclehowell/WaveOS.git
chmod +x /var/WaveOS

# Self-Build Device to the stage of Mode Selector e.g. broadcasts ssid, hostname, set-up hosting & host the mode-selector menu

sh /var/WaveOS/server/cross-device-scripts/features/self-build-the-mode-selector.sh



