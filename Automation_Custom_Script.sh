
apt-get install fbi -y


cp http://www.stickpng.com/assets/images/5866133d7d90850fc3ce2a54.png /etc/

mv /etc/5866133d7d90850fc3ce2a54.png splash.png

cp  /etc/init.d/

git clone https://github.com/unclehowell/WaveOS/blob/master/splashscreen.sh /etc/init.d/

mv /etc/init.d/splashscreen.sh /etc/init.d/splashscreen

chmod a+x /etc/init.d/asplashscreen

insserv /etc/init.d/asplashscreen

reboot


