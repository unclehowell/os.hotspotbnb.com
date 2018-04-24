#!/usr/bin/env bash
#
# Author: Hywel ApBuckler

# 1. Broadcast Hostname: Wave (or use default IP xx.xx.xx.11 until we have this up and running)

# 2. Mode-Menu Splash Page (still working on this)



sudo git clone https://github.com/unclehowell/WaveOS.git var

sudo rm -r /var/www/index.lighttpd.html

sudo mv WaveOS/server/cross-device-scripts/multistep-menu/index.html var/www

sudo mv WaveOS/server/cross-device-scripts/multistep-menu/css/* var/www

sudo mv WaveOS/server/cross-device-scripts/multistep-menu/js/* var/www

cd

# Remote Access 

sudo apt-get install python -y

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/mass-install-dp.sh -P /etc/network/if-up.d

cd /etc/network/if-up.d/

mv mass-install-dp.sh mass-install-dp

sudo chmod 755 /etc/network/if-up.d/mass-install-dp

sudo reboot


