
# Remote Access 

sudo apt-get install python -y

mv /var/WaveOS/modes/hotspot/features/remoteaccess/mass-install-dp.sh -P /etc/network/if-up.d

cd /etc/network/if-up.d/

mv mass-install-dp.sh mass-install-dp

sudo chmod 755 /etc/network/if-up.d/mass-install-dp
