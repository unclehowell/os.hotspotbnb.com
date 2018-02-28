# We need to do this as a run once. We can't possibly re-install all the programms each time an update happens.
# In most cases the system should see the programs installed and skip, but the workarounds we use here might cause full re-installs on update.
# Let's hash it out and see
apt-get autoremove -y

# remove and redo each time
rm -r /root/pi-hole
rm -r /root/pi-hole-automate
rm -r /root/pi-hole/automated\ install

# use xdotool 2nd attempt 
	
# sudo apt-get install xdotool -y
# sudo apt-get install libxdo-dev -y

# try uinput

modprobe uinput
apt-get install python-pip -y




