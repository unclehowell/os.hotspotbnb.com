

# Method 1 - using Roon! 

sh /var/WaveOS/modeless/features/kiosk-mode/roon-method.sh


# final gem to add from this site: https://superuser.com/questions/538367/fullscreen-xinit-raspberry-pi/538450#538450

# need to edit this file to include /
# ~/.config/chromium/Default/Preferences 


# stop screen-saver

sudo su

cd /etc/lightdm

sed 's/#xserver-command=X/xserver-command=X/' lightdm.conf > lightdm2.conf

mv lightdm2.conf lightdm.conf




















