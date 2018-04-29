# this file can be reference throughout the install, it's just some basic cleanup commands

# security certificates failed in past with web-browser and updates during initial boot-up because of time-sync issues e.g. time was wrong.
# this should be sorted within the dietpi.txt file, but just in case this is worth getting right early as possible. 
# also, dietpi talk about making it redundant. so watch this space.
timedatectl set-ntp true

# avoid kernel fails
rpi-update

# Remove the old Repo Achieve File - if it exists & make a new one
rm -r /var/WaveOS-old -y
mkdir /var/WaveOS-old

# if there is a copy of the repo locally, move it to old (if it exists)
mv /var/WaveOS /var/WaveOS-old

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
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
sudo apt autoremove -y

# get the latest repo
cd /var
git clone https://github.com/unclehowell/WaveOS.git
chmod +x /var/WaveOS/modeless/*
