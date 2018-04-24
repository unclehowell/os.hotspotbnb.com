# will install Avahi-Daemon: to connect to the unit without needing ip addresses

/DietPi/dietpi/dietpi-software install 152 

apt-get install insserv

insserv avahi-daemon

/etc/init.d/avahi-daemon restart





