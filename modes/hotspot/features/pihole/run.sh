# pihole pre-requisits

mkdir /etc/pihole
cd /etc/pihole
wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/modes/hotspot/features/pihole/setupVars.conf
cd

#  install the version of dnsmasq that supports the extra flag (v2.76)

#wget https://archive.raspberrypi.org/debian/pool/main/d/dnsmasq/dnsmasq-base_2.76-5+rpi1_armhf.deb
#wget https://archive.raspberrypi.org/debian/pool/main/d/dnsmasq/dnsmasq_2.76-5+rpi1_all.deb

#sudo apt-get install libnetfilter-conntrack3 libmnl0

#sudo dpkg -i dnsmasq-base_2.76-5+rpi1_armhf.deb
#sudo dpkg -i dnsmasq_2.76-5+rpi1_all.deb

# backup lighttpd.conf (to restore after update) 

mv /etc/lighttpd/lighttpd.conf /etc/lighttpd/lighttpd.conf.orig

# install pihole

curl -L https://install.pi-hole.net | bash /dev/stdin --unattended

cd

# switch up to the FTLDNS Beta

#echo "FTLDNS" | sudo tee /etc/pihole/ftlbranch
#pihole checkout core FTLDNS 
#pihole checkout web FTLDNS

#  something to do with Jessie, maybe able to remove
#cd /etc/.pihole
#sudo git fetch --all && sudo git checkout master
#cd /etc/pihole
#sudo git fetch --all && sudo git checkout master
#echo "FTLDNS" | sudo tee /etc/pihole/ftlbranch
#pihole checkout core FTLDNS 
#pihole checkout web FTLDNS

# have to change the lighttpd.conf file and resstart service to get pihole menu workingsed

sed 's/max connections = 8/ /g' smb.conf > smb2.conf
# mv /etc/samba/smb2.conf smb.conf
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



# restore lighttpd.conf 
# mv /etc/lighttpd/lighttpd.conf.orig /etc/lighttpd/lighttpd.conf