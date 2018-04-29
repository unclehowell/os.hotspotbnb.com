# this file can be reference throughout the install, it's just some basic cleanup commands

# security certificates failed in past with web-browser and updates during initial boot-up because of time-sync issues e.g. time was wrong.
# this should be sorted within the dietpi.txt file, but just in case this is worth getting right early as possible. 
# also, dietpi talk about making it redundant. so watch this space.
timedatectl set-ntp true

# avoid kernel fails
rpi-update

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


