#!/usr/bin/env bash

# Self-Build Device to the stage of Mode Selector e.g. broadcasts ssid, hostname, mode-selector menu etc

# get the latest repo
cd /var
git clone https://github.com/unclehowell/WaveOS.git
chmod +x /var/WaveOS/modeless/*

chmod +x /var/WaveOS/modeless/features/cleanup.sh
sh /var/WaveOS/modeless/features/cleanup.sh &&

# 1) Hosting: The Pi will need to have hosting capabilities so that the menu can be hosted

chmod +x /var/WaveOS/modeless/features/hosting.sh
sh /var/WaveOS/modeless/features/hosting.sh  &&

# 2) Then the menu needs to be placed into the www/ directory so it appears in the browser when the hostname is entered

sudo rm -r /var/www/html/index.html

cp /var/WaveOS/modeless/features/multistep-menu/index.html /var/www/html

mkdir /var/www/html/js

cp /var/WaveOS/modeless/features/multistep-menu/js/modernizr.custom.js /var/www/html/js
cp /var/WaveOS/modeless/features/multistep-menu/js/grid.js /var/www/html/js

mkdir /var/www/html/css

cp /var/WaveOS/modeless/features/multistep-menu/css/component.css /var/www/html/css
cp /var/WaveOS/modeless/features/multistep-menu/css/default.css /var/www/html/css

mkdir /var/www/html/images

cp /var/WaveOS/modeless/features/multistep-menu/images/1.jpg /var/www/html/images
cp /var/WaveOS/modeless/features/multistep-menu/images/2.jpg /var/www/html/images
cp /var/WaveOS/modeless/features/multistep-menu/images/3.png /var/www/html/images

mkdir /var/www/html/images/thumbs

cp /var/WaveOS/modeless/features/multistep-menu/images/thumbs/1.jpg /var/www/html/images/thumbs
cp /var/WaveOS/modeless/features/multistep-menu/images/thumbs/2.jpg /var/www/html/images/thumbs
cp /var/WaveOS/modeless/features/multistep-menu/images/thumbs/3.png /var/www/html/images/thumbs

cd

# 3) Then we need to get the menu up on the screen to make it even more obvious that a mode needs to be selected from the menu
# instead of trying to get guacamole working (so the users can control what's on the screen), the menu on the screen just needs to instruct hostname access via a mobile etc

# Method 1 - using Chrome, Roon & OpenBox!

# chmod +x /var/WaveOS/modeless/features/kiosk-mode/roon-method.sh
# sh /var/WaveOS/modeless/features/kiosk-mode/roon-method.sh  &&

# Method 2 - using Chrome on LXDE! 

# final gem to add from this site: https://superuser.com/questions/538367/fullscreen-xinit-raspberry-pi/538450#538450

# need to edit this file to include /
# ~/.config/chromium/Default/Preferences 


####### stop screen-saver
# sudo su
# cd /etc/lightdm
# sed 's/#xserver-command=X/xserver-command=X/' lightdm.conf > lightdm2.conf
# mv lightdm2.conf lightdm.conf



# The IP will need to change to avoid conflic with a 2nd, 3rd device which may connect to the network. 
# For this to happen, we may need to scan the network, see which IP's are available and allocate one as as fixed-IP. Solution Needed Here!



