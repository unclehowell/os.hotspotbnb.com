# pihole pre-requisits

mkdir /etc/pihole
cd /etc/pihole
wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/modes/hotspot/features/pihole/setupVars.conf

cd

#  install the version of dnsmasq that supports the extra flag (v2.76)

wget https://archive.raspberrypi.org/debian/pool/main/d/dnsmasq/dnsmasq-base_2.76-5+rpi1_armhf.deb
wget https://archive.raspberrypi.org/debian/pool/main/d/dnsmasq/dnsmasq_2.76-5+rpi1_all.deb

sudo apt-get install libnetfilter-conntrack3 libmnl0

sudo dpkg -i dnsmasq-base_2.76-5+rpi1_armhf.deb
sudo dpkg -i dnsmasq_2.76-5+rpi1_all.deb

# backup lighttpd.conf (to restore after update) 

mv /etc/lighttpd/lighttpd.conf /etc/lighttpd/lighttpd.conf.orig

# install pi

curl -L https://install.pi-hole.net | bash /dev/stdin --unattended

cd

# roll back version if issues

# cd /etc/.pihole
# sudo git fetch --tags
# sudo git checkout v3.2.1
# cd /var/www/html/admin
# sudo git fetch --tags
# sudo git checkout v3.2.1
# pihole -r
# pihole checkout ftl v2.13.2

sudo service pihole-FTL restart
sudo /etc/init.d/lighttpd restart



# reboot to make php work 

pihole -up


# restore lighttpd.conf 
mv /etc/lighttpd/lighttpd.conf.orig /etc/lighttpd/lighttpd.conf