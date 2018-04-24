# will install Avahi-Daemon: to connect to the unit without needing ip addresses

/DietPi/dietpi/dietpi-software install 152 

# tried this - didn't seem to work
apt-get install insserv
insserv avahi-daemon
/etc/init.d/avahi-daemon restart

# tried this - didn't seem to work

mv /var/WaveOS/server/cross-device-scripts/features/broadcast-hostname/dnsmasq.txt /etc/default/
mv /etc/default/dnsmasq.txt /etc/default/dnsmasq

# dhcpd.conf needs to be hashed out - according to the proof of concept v1.2. 

sed 's/ range/# range/' dhcpd.conf
sed 's/ option/# option/' dhcpd.conf
sed 's/}/# }/' dhcpd.conf
sed 's/8.8.8.8, 8.8.4.4/192.168.142.1, 10.0.0.1/' dhcpd.conf




