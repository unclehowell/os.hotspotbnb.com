#!/usr/bin/env bash
#
# Author: Hywel ApBuckler

# 1. Broadcast Hostname: Wave (or use default IP xx.xx.xx.11 until we have this up and running)

# 2. Mode-Menu Splash Page (still working on this)

rm -r /var/www/html/index.html

cd /var/www/html/

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/multistep-menu/index.html

mkdir css

mkdir js

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/multistep-menu/js/index.js /js/

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/multistep-menu/css/style.css /css/
