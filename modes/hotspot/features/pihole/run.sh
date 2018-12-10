# pihole pre-requisits (place config file)

mkdir /etc/pihole
cp /var/WaveOS/modes/hotspot/features/pihole/setupVars.conf /etc/pihole


#  install the version of dnsmasq that supports the extra flag (v2.76)

#wget https://archive.raspberrypi.org/debian/pool/main/d/dnsmasq/dnsmasq-base_2.76-5+rpi1_armhf.deb
#wget https://archive.raspberrypi.org/debian/pool/main/d/dnsmasq/dnsmasq_2.76-5+rpi1_all.deb

#sudo apt-get install libnetfilter-conntrack3 libmnl0

#sudo dpkg -i dnsmasq-base_2.76-5+rpi1_armhf.deb
#sudo dpkg -i dnsmasq_2.76-5+rpi1_all.deb

# backup lighttpd.conf (to restore after update) 

cp /etc/lighttpd/lighttpd.conf /etc/lighttpd/lighttpd.conf.orig

# install pihole

curl -L https://install.pi-hole.net | bash /dev/stdin --unattended


# switch up to the FTLDNS 

#echo "FTLDNS" | sudo tee /etc/pihole/ftlbranch
#pihole checkout core FTLDNS 
#pihole checkout web FTLDNS

# something to do with Jessie, maybe able to remove
#cd /etc/.pihole
#sudo git fetch --all && sudo git checkout master
#cd /etc/pihole
#sudo git fetch --all && sudo git checkout master
#echo "FTLDNS" | sudo tee /etc/pihole/ftlbranch
#pihole checkout core FTLDNS 
#pihole checkout web FTLDNS

# use the pihole version of the lighttpd.conf - with X-Frame=Allow (so it appears in the Unclehowell Dashboard)
# and restart the lighttpd service

cp /var/WaveOS/modes/hotspot/features/pihole/lighttpd.conf /etc/lighttpd

sudo /etc/init.d/lighttpd restart

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


# to make the user interface work (since it doesnt seem to play ball with autonomous install) I do this https://github.com/pi-hole/pi-hole/issues/576:

sudo apt-get remove lighttpd -y
sudo apt-get install lighttpd -y

sudo apt-get install libapache2-mod-php -y
# then I ran sudo a2enmod and selected to apply to all, but this step needs making autonomous)

sudo systemctl restart lighttpd
sudo service lighttpd start
# sudo reboot required - but this isn't done here, we cant have every app rebooting when it needs to

# not sure which thing fixed the issue, so its best to do them all as I did and revisit later when theres time

# restore lighttpd.conf 
# mv /etc/lighttpd/lighttpd.conf.orig /etc/lighttpd/lighttpd.conf

cd /var/www/html
sed -i 's/frame_pihole.html/http://192.168.42.1/admin/g' index.html > index2.html
mv index2.html > index.html
