# giving this whirl https://github.com/pluggemi/roon-web-controller/wiki/Diet-Pi-Installation


###############  Roon Web Controller Server ###############

sudo su

cd ~

# Node.js 
/DietPi/dietpi/dietpi-software install 9

# Fetch the Roon Web Controller software

su dietpi

cd ~

git clone https://github.com/pluggemi/roon-web-controller.git

cd roon-web-controller

npm install

# Configure Roon Web Controller to start at boot

sudo su

mv /var/WaveOS/modeless/features/kiosk-mode/roon-web-controller.service /lib/systemd/system

cd /lib/systemd/system

systemctl daemon-reload

systemctl enable roon-web-controller.service
systemctl start roon-web-controller.service


### before moving forward - extension manager time..
# Fetch the Roon Extension Manager installer

su dietpi
cd ~

wget https://raw.githubusercontent.com/TheAppgineer/roon-extension-manager-packaging/master/linux/setup.sh

chmod +x setup.sh

sudo ./setup.sh


# Enable extension and log watching hints
# n/a 

su dietpi

cd ~

cd roon-web-controller

sudo systemctl stop roon-web-controller.service

git pull

npm install

npm update

sudo systemctl start roon-web-controller.service

###############  Roon Web Controller Client ###############

su dietpi

cd ~

nano .xsession

mv /var/WaveOS/modeless/features/kiosk-mode/.xsession /home/dietpi

# System configuration

sudo su

sudo apt install xserver-xorg-video-fbdev xserver-xorg-input-libinput nodm fonts-noto openbox chromium-browser -y


apt-get install sed -y

cd /etc/default/

sed 's/NODM_USER=root/NODM_USER=dietpi/' nodm > nodm2

mv nodm2 nodm

sed 's/-nolisten tcp/nolisten tcp -nocursor/' nodm > nodm2

mv nodm2 nodm

# Display configuration

cd ~

su dietpi

# skipped 

## Install the software

# Roon Bridge

/DietPi/dietpi/dietpi-software install 121

systemctl enable roonbridge.service

systemctl start roonbridge.service


# final gem to add from this site: https://superuser.com/questions/538367/fullscreen-xinit-raspberry-pi/538450#538450

# need to edit this file to include /
# ~/.config/chromium/Default/Preferences 


# stop screen-saver

sudo su

cd /etc/lightdm

sed 's/#xserver-command=X/xserver-command=X/' lightdm.conf > lightdm2.conf

mv lightdm2.conf lightdm.conf




















