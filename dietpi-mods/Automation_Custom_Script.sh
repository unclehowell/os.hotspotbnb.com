
wget http://dietpi.com/downloads/binaries/all/libssl1.0.0_1.0.1t-1+deb8u7_armhf.deb -O package.deb
dpkg -i package.deb
dietpi-services restart
dietpi-services status
