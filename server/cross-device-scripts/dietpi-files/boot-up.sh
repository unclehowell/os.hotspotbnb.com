#!/usr/bin/env bash
#
# Author: Hywel ApBuckler

# 1. Broadcast Hostname: Wave (or use default IP xx.xx.xx.11 until we have this up and running)

# 2. Mode-Menu Splash Page (still working on this)

rm -r /var/www/index.lighttpd.html

cd /var/www/

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/multistep-menu/index.html

mkdir css

chown dietpi:dietpi /css

mkdir js

chown dietpi:dietpi /js

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/multistep-menu/js/index.js js

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/multistep-menu/css/style.css css

