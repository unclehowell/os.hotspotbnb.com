# We need to do this as a run once. We can't possibly re-install all the programms each time an update happens.
# In most cases the system should see the programs installed and skip, but the workarounds we use here might cause full re-installs on update.
# Let's hash it out and see

apt-get autoremove -y

# netdata

apt-get install zlib1g-dev uuid-dev libmnl-dev gcc make git autoconf autoconf-archive autogen automake pkg-config curl -y
git clone https://github.com/unclehowell/WaveOS_App--netdata.git --depth=1
cd netdata
./netdata-installer.sh --install /opt



# now for pihole ,using this guide https://blog.sleeplessbeastie.eu/2018/01/11/how-to-install-and-configure-pi-hole/

apt-get install git net-tools -y

git clone --depth 1 https://github.com/unclehowell/pi-hole.git pi-hole

# Then we run the autonomous version of the script, to save us going through menu options

wget https://raw.githubusercontent.com/unclehowell/WaveOS-Core--automate-PiHole/master/auto-install.sh -P /root/pi-hole/automated install/




