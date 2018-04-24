# Display settings (HDMI for TVs - fit to edge of screen etc)
# overscan=1, -35ish LRT&B. 

# XRDP (desktop)
sudo dietpi-software install 29

# chromium
sudo apt-get install --no-install-recommends chromium-browser

# X-server (Linux Display System)
sudo dietpi-software install 6

# Chromium Kiosk Mode  (guide here https://die-antwort.eu/techblog/2017-12-setup-raspberry-pi-for-kiosk-mode/)

sudo apt-get update && apt-get upgrade -y
sudo apt-get install --no-install-recommends xserver-xorg xinit openbox
sudo apt-get install chromium x11-xserver-utils unclutter
sed -i -e 's/screen saver/#screen saver/g' /etc/xdg/lxsession/LXDE/autostart
echo -n "@xset s off" >> </etc/xdg/lxsession/LXDE/autostart>
echo -n "@xset -dpms" >> </etc/xdg/lxsession/LXDE/autostart>
echo -n "@xset s noblank" >> </etc/xdg/lxsession/LXDE/autostart>
echo -n "@chromium --kiosk --incognito http://wave/" >> </etc/xdg/lxsession/LXDE/autostart>

# Docker (for Guacamole)
sudo dietpi-software install 162

# Guacamole Install - http://guacamole.apache.org/doc/gug/guacamole-docker.html
docker run --name some-guacd -d guacamole/guacd

# http://raspberrywebserver.com/sql-databases/using-mysql-on-a-raspberry-pi.html
sudo apt-get install mysql-server python-mysqldb -y

docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > initdb.sql



