## IP Settings

(scenario 1 - RPI >(ethernet)> MicroTik Router >(Wi-Fi)> 4G Cellular Dongle) 

AUTO_SETUP_NET_STATIC_IP=10.0.0.11
AUTO_SETUP_NET_STATIC_MASK=255.255.255.0
AUTO_SETUP_NET_STATIC_GATEWAY=10.0.0.1
AUTO_SETUP_NET_STATIC_DNS=192.168.1.1

(scenario 2 - RPI >(ethernet)> DSL Router)

AUTO_SETUP_NET_STATIC_IP=10.0.0.11
AUTO_SETUP_NET_STATIC_MASK=255.255.255.0
AUTO_SETUP_NET_STATIC_GATEWAY=10.0.0.1
AUTO_SETUP_NET_STATIC_DNS=8.8.8.8 8.8.4.4

or 

AUTO_SETUP_NET_STATIC_IP=192.168.1.11
AUTO_SETUP_NET_STATIC_MASK=255.255.255.0
AUTO_SETUP_NET_STATIC_GATEWAY=192.168.1.1
AUTO_SETUP_NET_STATIC_DNS=8.8.8.8 8.8.4.4

## Regional Settings


# NTPD mirrors

pool.ntp.org Global
debian.pool.ntp.org Debian Global
europe.pool.ntp.org Europe
north-america.pool.ntp.org North America
south-america.pool.ntp.org South America
africa.pool.ntp.org Africa
asia.pool.ntp.org Asia

