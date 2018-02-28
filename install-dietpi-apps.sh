# We need to do this as a run once. We can't possibly re-install all the programms each time an update happens.
# In most cases the system should see the programs installed and skip, but the workarounds we use here might cause full re-installs on update.
# Let's hash it out and see

# First we need this program which apparently simulates keystrokes. We're basically going to trick PiHole into thinking a human is entering the settings on its menu.

apt-get install xdotool -y

# we also need this, X11 is part of Xserver and this is what tricks the system into accepting the key strokes from xdotool

apt-get install xserver-xorg -y
apt-get install x11-apps -y
apt-get install lightdm -y
sudo service lightdm start
export DISPLAY=:0.0

# now for pihole ,using this guide https://blog.sleeplessbeastie.eu/2018/01/11/how-to-install-and-configure-pi-hole/

apt-get install git net-tools -y

git clone --depth 1 https://github.com/unclehowell/pi-hole.git pi-hole

# Then we use our custom basic-install script, which has the xdottool commands in it (to simulate a human configuring it). Otherwise it will cease installing while it waits for a user to enter the settings

sudo bash pi-hole/automated\ install/fully-automated-install.sh  & sleep 30; echo "Y Y Y Y Y Y Y Y Y Y" | /root/pi-hole/automated\ install/fully-automated-install.sh

echo "Y Y Y Y Y Y Y Y Y Y" | /root/pi-hole/automated\ install/fully-automated-install.sh

echo "Y Y Y Y Y Y Y Y Y Y"









