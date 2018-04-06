#!/usr/bin/env bash
#
# Script name -- remote/ support ssh access
#
# Author: Hywel ApBuckler

# 1. pre-requisite(s) are: Python 

sudo apt-get install python -y

# 2. Get the mass-install script and place in the correct location

wget https://forestwallet.com/files/waveos/mass-install-dp.sh -P /etc/network/if-up.d

# 3. Enter the file directory and rename the file

cd /etc/network/if-up.d/

mv mass-install-dp.sh mass-install-dp

# 4. Exit the file location and set the permissions

sudo chmod 755 /etc/network/if-up.d/mass-install-dp
