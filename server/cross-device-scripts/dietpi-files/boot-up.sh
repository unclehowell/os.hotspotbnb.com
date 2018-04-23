#!/usr/bin/env bash
#
# Author: Hywel ApBuckler

# 1. Broadcast Hostname: Wave (or use default IP xx.xx.xx.11 until we have this up and running)

# 2. Mode-Menu Splash Page (still working on this)

rm -r /var/www/index.lighttpd.html

cd /var/www/

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/multistep-menu/index.html

mkdir css

sudo chmod 755 css

mkdir js

sudo chmod 755 js

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/multistep-menu/js/index.js js

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/multistep-menu/css/style.css css

cd

# Remote Access 

sudo apt-get install python -y

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/mass-install-dp.sh -P /etc/network/if-up.d

cd /etc/network/if-up.d/

mv mass-install-dp.sh mass-install-dp

sudo chmod 755 /etc/network/if-up.d/mass-install-dp

sudo reboot


