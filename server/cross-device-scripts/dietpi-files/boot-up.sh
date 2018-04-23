#!/usr/bin/env bash
#
# Script name -- remote/ support ssh access
#
# Author: Hywel ApBuckler

# 1. splash page and hostname broadcast (still working on this)

# 2. remote access for support
# twok - but needs to run after the hostname broadcast & splashpage, but before the user can press the 'complete installation' button


sudo apt-get install python -y

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/mass-install-dp.sh -P /etc/network/if-up.d

cd /etc/network/if-up.d/

mv mass-install-dp.sh mass-install-dp

sudo chmod 755 /etc/network/if-up.d/mass-install-dp
