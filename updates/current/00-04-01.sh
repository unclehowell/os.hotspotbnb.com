#!/usr/bin/env bash

# update the brand logo

RED='\033[0;31m'
NC='\033[0m' # No Color
printf "${RED}WAVEOS-version-0-4-1${NC} - The system will now update from version 0.4.0 to version 0.4.1\n"

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

# should run cleaner on every update, for benefit of firmware updates and general housekeeping
sh /var/WaveOS/modeless/features/cleanup.sh ;


# erase content of this file to ensure run once
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "${RED}WaveOS is now at version 0.4.1${NC} - Self-destructing this update script so it wont run again and create a loop\n" ;

cd

# This is how we erase the content of this file
cd /usr/lib/WaveOS-updates
printf 'sleep 30\n sudo rm -r /usr/lib/WaveOS-updates/00-04-01.sh\n sudo touch /usr/lib/WaveOS-updates/00-04-01.sh\n' > 00-04-01-01.sh
chmod +x 00-04-01-01.sh
sudo sh /usr/lib/WaveOS-updates/00-04-01-01.sh
cd
exit 0
 
 
