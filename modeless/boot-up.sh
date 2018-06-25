#!/usr/bin/env bash

# Self-Build Device to the point the wi-fi can accessed and the Mode Selector menu appears (redirect to splashpage preferably) 

# get the latest repo onto the device
cd /var
rm -r WaveOS
git clone https://github.com/unclehowell/WaveOS.git
chmod +x /var/WaveOS/modeless/*
cd

# 1) schedule run of auto-updater to daily e.g. bug fixes etc

rm -r /etc/cron.daily/prep-update.sh
mv /var/WaveOS/updates/current/prep-update.sh /etc/cron.daily/
chmod +x /etc/cron.daily/prep-update.sh

# 2) Hosting: The Pi will need to have hosting capabilities so that the menu can be hosted

sh /var/WaveOS/modeless/features/hosting.sh  ;

# 3) Then the menu needs to be placed into the www/ directory so it appears in the browser when the hostname is entered

sh /var/WaveOS/modeless/features/multistep-menu/run.sh  ;
rm -r /var/www/html/run.sh  ; # one less thing to cause confusion


# Then we need to get the menu up on the screen to make it even more obvious that a mode needs to be selected from the menu
# instead of trying to get guacamole working (so the users can control what's on the screen), the menu on the screen just needs to instruct hostname access via a mobile etc

# Method 1 - using Chrome, Roon & OpenBox!

# chmod +x /var/WaveOS/modeless/features/kiosk-mode/roon-method.sh
# sh /var/WaveOS/modeless/features/kiosk-mode/roon-method.sh  &&

# Method 2 - using Chrome on LXDE! 

# final gem to add from this site: https://superuser.com/questions/538367/fullscreen-xinit-raspberry-pi/538450#538450

# need to edit this file to include /
# ~/.config/chromium/Default/Preferences 

# 4) force WaveOS update - to the latest version (the update process achieves this) 

sh /var/WaveOS/updates/current/update.sh


####### stop screen-saver
# sudo su
# cd /etc/lightdm
# sed 's/#xserver-command=X/xserver-command=X/' lightdm.conf > lightdm2.conf
# mv lightdm2.conf lightdm.conf

# LEFT UNTIL THE END  (CAUSES AUTO REBOOT)

sh /var/WaveOS/modeless/features/cleanup.sh

# The IP will need to change to avoid conflict with a 2nd, 3rd device which may connect to the network. 
# For this to happen, we may need to scan the network, see which IP's are available and allocate one as as fixed-IP. Solution Needed Here!



