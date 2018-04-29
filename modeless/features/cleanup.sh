# this file can be reference throughout the install, it's just some basic cleanup commands
# remove the old repo
rm -r /var/WaveOS-old
rm -r /var/WaveOS

# remove the mode-select menu
rm -r /var/www/js
rm -r /var/www/css
rm -r /var/www/images
rm -r /var/www/index.html

# fix a tonn of things
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
sudo apt autoremove -y
apt-get -f install
apt --fix-broken install
apt-get update –fix-missing
dpkg –configure -a
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
sudo apt autoremove -y

# get the latest repo
cd /var
git clone https://github.com/unclehowell/WaveOS.git
chmod +x /var/WaveOS
