# We need to do this as a run once. We can't possibly re-install all the programms each time an update happens.
# In most cases the system should see the programs installed and skip, but the workarounds we use here might cause full re-installs on update.
# Let's hash it out and see

# now for pihole ,using this guide https://blog.sleeplessbeastie.eu/2018/01/11/how-to-install-and-configure-pi-hole/

apt-get install git net-tools -y

git clone --depth 1 https://github.com/unclehowell/pi-hole.git pi-hole

# Then we use our custom basic-install script, which has the xdottool commands in it (to simulate a human configuring it). Otherwise it will cease installing while it waits for a user to enter the settings

sudo bash pi-hole/automated\ install/fully-automated-install.sh > sleep 30; echo "Y Y Y Y Y Y Y Y Y Y" | /root/pi-hole/automated\ install/fully-automated-install.sh > sleep 120; echo "Y Y Y Y Y Y Y Y Y Y"

sleep 60; echo "Y Y Y Y Y Y Y Y Y Y" | /root/pi-hole/automated install/fully-automated-install.sh > sleep 90; echo "Y Y Y Y Y Y Y Y Y Y" > sleep 120; echo "Y Y Y Y Y Y Y Y Y Y" > sleep 30; echo "Y Y Y Y Y Y Y Y Y Y" | /root/pi-hole/automated\ install/fully-automated-install.sh 

sleep 60; echo "Y Y Y Y Y Y Y Y Y Y" | /root/pi-hole/automated install/fully-automated-install.sh > sudo bash pi-hole/automated\ install/fully-automated-install.sh




