# clear the content of the web-server directory
rm -r /var/www/html/index.html
rm -r /var/www/html/img
rm -r /var/www/html/images
rm -r /var/www/html/js
rm -r /var/www/html/css
rm -r /var/www/html/cgi-redirectors

# place the mode select menu into the web-server directory
mkdir /var/www/html/js
mkdir /var/www/html/css
mkdir /var/www/html/images
mkdir /var/www/html/images/thumbs
mkdir /var/www/html/cgi-redirectors

# move the content to the right directories
mv /var/WaveOS/modeless/features/multistep-menu/index.html /var/www/html
mv /var/WaveOS/modeless/features/multistep-menu/version.txt /var/www/html
mv /var/WaveOS/modeless/features/multistep-menu/js/* /var/www/html/js
mv /var/WaveOS/modeless/features/multistep-menu/css/* /var/www/html/css
mv /var/WaveOS/modeless/features/multistep-menu/images/* /var/www/html/images
mv /var/WaveOS/modeless/features/multistep-menu/images/thumbs/* /var/www/html/images/thumbs
mv /var/WaveOS/modeless/features/multistep-menu/cgi-redirectors/* /var/www/html/cgi-redirectors
