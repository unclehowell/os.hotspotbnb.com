# autonomous installation of hosting dependencies, apps and config

# boom! hosting

# not sure exactly why Tomcat has to be installed before apache2 - but this is the only way to make hosting work.
/DietPi/dietpi/dietpi-software install 125

# apache2
apt-get install apache2 -y

# Then we need CGI & Perl running, so the buttons on the mode-select menu will run mode-activation script
cd /etc/apache2/mods-enabled
sudo ln -sT ../mods-available/cgi.load cgi.load
cd

# restart - always important
sudo systemctl restart apache2

# this is required for the update process
sudo apt-get install subversion -y