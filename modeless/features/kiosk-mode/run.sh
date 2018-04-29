# giving this whirl https://github.com/pluggemi/roon-web-controller/wiki/Diet-Pi-Installation

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

# Enable extension and log watching hints






