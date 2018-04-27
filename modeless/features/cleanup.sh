# this file can be reference throughout the install, it's just some basic cleanup commands
rm -r /var/WaveOS

cd /var
git clone https://github.com/unclehowell/WaveOS.git
chmod +x /var/WaveOS

rm -r /var/www/js
rm -r /var/www/css

sudo apt autoremove -y
