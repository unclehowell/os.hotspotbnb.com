#!/bin/sh

# We need to do this as a run once. We can't possibly re-install all the programms each time an update happens.
# In most cases the system should see the programs installed and skip, but the workarounds we use here might cause full re-installs on update.
# Let's hash it out and see
apt-get autoremove -y

# remove and redo each time
rm -r /root/pi-hole
rm -r /root/pi-hole-automate
rm -r /root/pi-hole/automated\ install
rm -r /root/get-pip.py1
rm -r /root/get-pip.py2

# use xdotool 2nd attempt 
	
# sudo apt-get install xdotool -y
# sudo apt-get install libxdo-dev -y

# try python

modprobe uinput
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
python-setuptools -y
pip install python-uinput
git clone https://github.com/tuomasjjrasanen/python-uinput.git
cd /root/python-uinput/
python setup.py build
python setup.py install
sudo apt-get install python3-pip -y
pip3 install pynput -y
chmod +x /opt/WaveOS/hit-enter.py
chmod +x /opt/WaveOS/hit-enter.sh

# install pihole

curl -sSL https://install.pi-hole.net
sleep 50 python /opt/WaveOS/hit-enter.py







