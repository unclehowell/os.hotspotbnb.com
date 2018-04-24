# Display settings (HDMI for TVs - fit to edge of screen etc)
# overscan=1, -35ish LRT&B. 

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

sudo apt-get update && apt-get upgrade -y
sudo apt-get install chromium x11-xserver-utils unclutter chromium-bsu
sudo apt-get install --no-install-recommends xserver-xorg xinit openbox
sed -i -e 's/screen saver/#screen saver/g' /etc/xdg/lxsession/LXDE/autostart
echo -n "@xset s off" >> </etc/xdg/lxsession/LXDE/autostart>
echo -n "@xset -dpms" >> </etc/xdg/lxsession/LXDE/autostart>
echo -n "@xset s noblank" >> </etc/xdg/lxsession/LXDE/autostart>
echo -n "@chromium --kiosk --incognito http://10.0.0.10" >> </etc/xdg/lxsession/LXDE/autostart>

# Docker (for Guacamole)
sudo dietpi-software install 162

# Guacamole Install - http://guacamole.apache.org/doc/gug/guacamole-docker.html
docker run --name some-guacd -d guacamole/guacd

# http://raspberrywebserver.com/sql-databases/using-mysql-on-a-raspberry-pi.html
sudo apt-get install mysql-server python-mysqldb -y

docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > initdb.sql



