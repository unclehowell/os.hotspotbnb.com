# Display settings (HDMI for TVs - fit to edge of screen etc)
# overscan=1, -35ish LRT&B.

# this gets add-apt-repository working
sudo apt-get install python-software-properties

# XRDP (desktop)
sudo dietpi-software install 29

# chromium
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install --no-install-recommends chromium-browser
sudo apt-get install -y rpi-chromium-mods
sudo apt-get install -y python-sense-emu python3-sense-emu

# X-server (Linux Display System)
sudo dietpi-software install 6

# Chromium Kiosk Mode  (guide here https://die-antwort.eu/techblog/2017-12-setup-raspberry-pi-for-kiosk-mode/)

sudo apt install --reinstall sed
sudo apt-get update && apt-get upgrade -y
sudo apt-get install chromium x11-xserver-utils unclutter chromium-bsu
sudo apt-get install libva-glx1 libva-x11-1 i965-va-driver
sudo apt-get install --no-install-recommends xserver-xorg xinit openbox
sed -i -e 's/screen saver/#screen saver/g' /etc/xdg/lxsession/LXDE/autostart

# Disable any form of screen saver / screen blanking / power management
sed -i -e 's/xset s off/#xset s off/g' /etc/xdg/lxsession/LXDE/autostart
echo 'xset s off' /etc/xdg/lxsession/LXDE/autostart
xset s noblank
xset -dpms

# Allow quitting the X server with CTRL-ATL-Backspace
setxkbmap -option terminate:ctrl_alt_bksp

# Start Chromium in kiosk mode
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/'Local State'
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences
chromium-browser --disable-infobars --kiosk 'http://10.0.0.10'

# Docker (for Guacamole)
sudo dietpi-software install 162

# Guacamole Install - http://guacamole.apache.org/doc/gug/guacamole-docker.html
docker run --name some-guacd -d guacamole/guacd

# http://raspberrywebserver.com/sql-databases/using-mysql-on-a-raspberry-pi.html
sudo apt-get install mysql-server python-mysqldb -y

docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > initdb.sql



