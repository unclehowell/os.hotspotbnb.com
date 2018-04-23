
# Remote Access 

sudo apt-get install python -y

wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/server/cross-device-scripts/mass-install-dp.sh -P /etc/network/if-up.d

cd /etc/network/if-up.d/

mv mass-install-dp.sh mass-install-dp

sudo chmod 755 /etc/network/if-up.d/mass-install-dp
