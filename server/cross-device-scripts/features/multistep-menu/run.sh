touch /var/www/index.lighttpd.html
sudo rm -r /var/www/index.lighttpd.html

mv /var/WaveOS/server/cross-device-scripts/features/multistep-menu/index.html /var/www

mkdir /var/www/js

mkdir /var/www/css

mv /var/WaveOS/server/cross-device-scripts/features/multistep-menu/css/style.css /var/www/css

mv /var/WaveOS/server/cross-device-scripts/features/multistep-menu/js/index.js /var/www/js

cd
