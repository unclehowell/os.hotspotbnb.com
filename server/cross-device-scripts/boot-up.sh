#!/usr/bin/env bash
# Author: Hywel ApBuckler

# will install Git: needed for next step
dietpi-software install=17

# get script, run script: fetch the latest repo (so remaining tasks can then execute from the local repo), then remove all trace

# Remove the old Repo Achieve File - if it exists & make a new one
rm -r WaveOS-old
mkdir WaveOS-old

# if there is a copy of the repo locally, move it to old (if it exists)
mv var/WaveOS var/WaveOS-old

# remove content of the repo archieve (incase there's a few piled up)
rm -r var/WaveOS/* -y

# retrieve the latest repo (master branch) and put into the /var directory
sudo git clone https://github.com/unclehowell/WaveOS.git var

# Self-Build Device to point of Mode Selector

sudo sh var/WaveOS/server/cross-device-scripts/features/mode-selector.sh



