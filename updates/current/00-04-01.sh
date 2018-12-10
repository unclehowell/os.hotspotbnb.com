#!/usr/bin/env bash

RED='\033[0;31m'
NC='\033[0m' # No Color
printf "\n\n${RED}WaveOS-version-0-4-1${NC} - The system will now update from version 0.4.0 to version 0.4.1\n\n"

# added this to the hosting.sh - it's used for the new update process 
sudo apt-get install subversion -y

# get the latest prep-update, so if it's not right today because of prep, it'll update tomorrow fine. Could manually force, but then we'd have resolve another loop
cd /etc/cron.daily
rm -r prep-update.sh
wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/updates/current/prep-update.sh
chmod +x prep-update.sh
cd

# update the version number
cd /var/www/html/
sed -i 's/0.4.0/0.4.1/g' version.txt
cd

RED='\033[0;31m'
NC='\033[0m' # No Color
printf "\n\n${RED}WaveOS is now at version 0.4.1${NC} - Self-destructing this update script so it wont run again and create a loop\n\n" ;

cd

# Then we systematically erase the content of this file to avoid it running again. 
cd /usr/lib/WaveOS-updates
printf 'sleep 15\n sudo rm -r /usr/lib/WaveOS-updates/00-04-01.sh\n sudo touch /usr/lib/WaveOS-updates/00-04-01.sh\n' > 00-04-01-01.sh
chmod +x 00-04-01-01.sh
sudo sh 00-04-01-01.sh
cd

exit 0
 
 
