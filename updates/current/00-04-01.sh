#!/usr/bin/env bash

# update the brand logo

cd /var/www/html/images/thumbs/
rm -r 3.png
wget http://makeitwave.com/img/wave_logo.png
mv wave_logo.png 3.png
cd

# added this to the hosting.sh - it's used for the new update process 
sudo apt-get install subversion -y

# update the version number
cd /var/www/html/
sed -i 's/0.4.0/0.4.1/g' version.txt
cd

# erase content of this file to ensure run once

cp /dev/null 00-04-01.sh