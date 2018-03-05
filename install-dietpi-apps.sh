#!/bin/sh

# apt-get update
# apt-get upgrade
# apt-get autoremove -y

printf 'y\y\y\y\y\y\y' | curl -sSL https://install.pi-hole.net | bash

# software - emby
/DietPi/dietpi/dietpi-software install 41

# software - Raspap-webgui
sudo apt-get install git lighttpd php5-cgi hostapd dnsmasq -y
sudo lighttpd-enable-mod fastcgi-php
sudo service lighttpd restart
wget -q https://git.io/voEUQ -O /tmp/raspap && printf 'y' | bash /tmp/raspap && sleep 50 printf 'y'




# notes

# We need to do this as a run once. We can't possibly re-install all the programms each time an update happens.
# In most cases the system should see the programs installed and skip, but the workarounds we use here might cause full re-installs on update.
# Let's hash it out and see

# pihole 

# the xserver/x11 and keystroke tools for pihole 
# rm -r /root/pi-hole
# rm -r /root/pi-hole-automate
# rm -r /root/pi-hole/automated\ install
# rm -r /root/get-pip.py
# rm -r /root/get-pip.py1
# rm -r /root/get-pip.py2


	
# sudo apt-get install xdotool -y
# sudo apt-get install libxdo-dev -y



#modprobe uinput


#python-setuptools -y
#pip install python-uinput
#git clone https://github.com/tuomasjjrasanen/python-uinput.git
#cd /root/python-uinput/
#python setup.py build
#python setup.py install
#sudo apt-get install python3-pip -y
#pip3 install pynput
#chmod +x /opt/WaveOS/hit-enter.py
#chmod +x /opt/WaveOS/hit-enter.sh

# install pihole

#sleep 15 python /opt/WaveOS/hit-enter.py &
#sleep 15 sudo bash /opt/WaveOS/hit-enter.sh &
#curl -sSL https://install.pi-hole.net | bash &
#sleep 5 python /opt/WaveOS/hit-enter.py





		
