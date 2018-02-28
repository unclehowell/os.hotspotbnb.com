# We need to do this as a run once. We can't possibly re-install all the programms each time an update happens.
# In most cases the system should see the programs installed and skip, but the workarounds we use here might cause full re-installs on update.
# Let's hash it out and see
apt-get autoremove -y

# now for pihole ,using this guide https://blog.sleeplessbeastie.eu/2018/01/11/how-to-install-and-configure-pi-hole/
apt-get install git net-tools -y
git clone --depth 1 https://github.com/unclehowell/pi-hole.git pi-hole

# before we run the install we introduce the automoated install script
git clone --depth 1 https://github.com/unclehowell/WaveOS-Core--automate-PiHole.git pi-hole-automate
sudo bash root/pi-hole-automate/UninstallOriginal.sh
sudo bash root/pi-hole-automate/autoinstallTest.sh

# plan b - copy the auto script into the pi-hole repo and run it from there /root/pi-hole/automated\ install/auto-install.sh




