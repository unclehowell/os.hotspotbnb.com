# pihole pre-requisits

mkdir /etc/pihole
cd /etc/pihole
wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/modes/hotspot/features/pihole/setupVars.conf

cd

# backup lighttpd.conf (to restore after update) 

mv /etc/lighttpd/lighttpd.conf /etc/lighttpd/lighttpd.conf.orig

/DietPi/dietpi/dietpi-software install 93 --unattended
curl -L https://install.pi-hole.net | bash /dev/stdin --unattended

cd

sudo service pihole-FTL restart
sudo /etc/init.d/lighttpd restart

# reboot to make php work 

pihole -up


# restore lighttpd.conf 
mv /etc/lighttpd/lighttpd.conf.orig /etc/lighttpd/lighttpd.conf