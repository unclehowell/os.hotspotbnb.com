# searched proof of concept system for all instances of hostname to find clues how I made it broadcast (using this command: grep -rnw '/' -e 'casavr')
# here's the results - maybe it'll be of use
# Binary file /etc/dhcp/.dhcpd.conf.swp matches - NOT INTERESTING
# /etc/hostname:1:casavr - OF COURSE!
# /etc/hosts:2:127.0.1.1 casavr - OF COURSE!
# /etc/pihole/local.list:1:10.0.0.10 casavr - NOT ARRIVED AT PIHOLE PHASE YET!
# /etc/hostapd/hostapd.conf:3:ssid=casavr  - NOT INTERESTING
# no hidden gems there. 

# will install Avahi-Daemon: to connect to the unit without needing ip addresses

# installed earlier via dietpi.txt - but then removed because proof of concept doesn't use it. 

# /DietPi/dietpi/dietpi-software install 152 

#apt-get install insserv
#insserv avahi-daemon
#/etc/init.d/avahi-daemon restart

# tried this - didn't seem to work

#mv /var/UnclehowellOS/modeless/features/broadcast-hostname/dnsmasq.txt /etc/default/
#mv /etc/default/dnsmasq.txt /etc/default/dnsmasq

# dhcpd.conf needs to be hashed out - according to the proof of concept v1.2. 

#sed 's/ range/# range/' dhcpd.conf
#sed 's/ option/# option/' dhcpd.conf
#sed 's/}/# }/' dhcpd.conf
#sed 's/8.8.8.8, 8.8.4.4/192.168.142.1, 10.0.0.1/' dhcpd.conf

# tried this, no ping on hostname yet

#sudo apt-get install samba -y
/DietPi/dietpi/dietpi-software install 96 # samba
#/DietPi/dietpi/dietpi-software install 1  # samba client

# tried replacing this, as stated in this guide : https://rasspberrypi.wordpress.com/2012/09/08/connect-to-rasspberry-pi-using-hostname/ 
# the default in the guide is supposedly "hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4". Whereas mine is "hosts:          files dns"
# so i'll change 'files dns' to 'mdns4_minimal [NOTFOUND=return] dns mdns4' to what it suggests in the guide. 
# sed 's/hosts:          files dns/hosts:          files mdns4_minimal [NOTFOUND=return] dns mdns4 wins/' /etc/nsswitch.conf
# sed command didn't work, manually change (& reboot) didn't work
# will just replace entire file with the one from the proof of concept system (v1.2) instead, see if that works.
# windbinds not installed on the proof of concept system, but I'll try it anyways now, for added assurance/ process of elimination: 
# 


# I remember something about dhcpcd.conf (not to be confused with dhcpd.conf). 
# This file exists on the proof of concept system (v1.2) but not on this build, so that could be the culprit.

# /etc/dhcp/dhclient.conf is one place to look according to the web, but both the showcase and the target-device are the same. so that's ruled out-ish!

# There was a discrepancies with this file (/etc/samba/smb.conf), so I'll make them match (the proof of concept one) 
# cd /etc/samba
# sed 's/max connections = 8/ /g' smb.conf > smb2.conf
# mv /etc/samba/smb2.conf smb.conf

# ok. I think I found the problem, let's give this a go - it's already installed on the proof of concept system, so that's a clue it could be it. 
# nope

sudo apt-get install libnss-mdns -y

# just checked to see if hostname.local even works - and it does - woo hoo! progress - but I need to remove .local, so still must figure this!
# the thing that brough this home was iptables. soon as I copied them across from v1.2 it seemed to do the trick. http://modeless/ now takes you to the mode-select menu. Woo Hoo.
# but there's surely some dependencies. It can't just be iptables doing all the work. will try again from scratch with just iptables, failing that I'll implement in reverse order the above and see which one does the trick. 










