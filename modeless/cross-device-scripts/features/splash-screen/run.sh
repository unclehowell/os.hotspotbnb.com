sudo apt-get install fbi -y

# copy the script and splash screen image

sudo chmod a+x /etc/init.d/asplashscreen
sudo insserv /etc/init.d/asplashscreen
