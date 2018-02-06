#!/bin/sh
iptables -t nat -D PREROUTING -i br0 -d ! `nvram get lan_ipaddr` -p tcp --dport 80 -j REDIRECT --to-port 3128
iptables -t nat -I PREROUTING -i br0 -d ! `nvram get lan_ipaddr` -p tcp --dport 80 -j REDIRECT --to-port 3128
mkdir /tmp/squid
chmod 777 /tmp/squid
ln -s /usr/sbin/squid /tmp/squidwave
killall -9 squidwave
cd /tmp
nohup /tmp/squidwave -YC -s -f /tmp/wave/squid.conf >/dev/null 2>&1 &
