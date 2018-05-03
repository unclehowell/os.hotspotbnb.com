# autonomous installation of hosting dependencies, apps and config

# boom! hosting

# not sure exactly why Tomcat has to be installed before apache2 - but this is the only way to make hosting work.
/DietPi/dietpi/dietpi-software install 125

apt-get install apache2 -y
