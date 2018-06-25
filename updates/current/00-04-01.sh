#!/usr/bin/env bash

# update the brand logo

cd /var/www/html/images/thumbs/
rm -r 3.png
wget http://makeitwave.com/img/wave_logo.png
mv wave_logo.png 3.png
cd

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
sh /var/WaveOS/modeless/features/cleanup.sh


# erase content of this file to ensure run once

cp /dev/null 00-04-01.sh