#!/usr/bin/env bash
#
# Author: Hywel ApBuckler

# Broadcast Hostname: Wave (or use default IP xx.xx.xx.11 until we have this up and running)

# Mode-Menu Splash Page (still working on this)

sudo git clone https://github.com/unclehowell/WaveOS.git var

sudo rm -r /var/www/index.lighttpd.html

cd /var/WaveOS/server/cross-device-scripts/features/multistep-menu/

mv index.html var/www

mv css/* var/www

mv js/* var/www

cd


