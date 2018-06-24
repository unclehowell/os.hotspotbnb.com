# autonomous installation of hosting dependencies, apps and config

# boom! hosting

# not sure exactly why Tomcat has to be installed before apache2 - but this is the only way to make hosting work.
/DietPi/dietpi/dietpi-software install 125

<<<<<<< HEAD
apt-get install apache2 -y
=======
apt-get install apache2 -y

# Then we need CGI & Perl running, so the buttons on the mode-select menu will run mode-activation script

cd /etc/apache2/mods-enabled
sudo ln -sT ../mods-available/cgi.load cgi.load


>>>>>>> dde3547d2556efbfe0deccb641fe084eeecc8ecd
