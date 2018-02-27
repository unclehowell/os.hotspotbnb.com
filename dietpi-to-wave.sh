# location of this file of WaveBox = /opt/WaveOS/dietpi-to-wave.sh

# This is the highest priority file of the whole WaveOS system. This guide & script changes a dietpi image to operate as a WaveOS image;
# * The idea is that this shell script will run everything, but only after we make some essential minimal changes to dietpi's custom config. 
# * most of the work will happen remotely, just follow the steps below and make sure the router which the WaveBox is connected to is:
#   IP: 10.0.0.1 .........and DHCP of Ethernet is = 10.0.0.2 - 10.0.0.254
 
# step-1: download dietpi and insert the dietpi image onto an SD card and into the raspberry pi - making sure the screen is connected to see what you're doing
# step-2: login using ssh/ default dietpi:dietpi - then switch to root ('sudo su')
# step-3: change display, so you can see what you're doing: 'dietpi-config >1. display options > then in my case 'rpi touchscreen'. Then reboot
# step-4: Now set the ethernets default IP to static: 10.0.0.10 / gateway: 10.0.0.1 (visit: dietpi-config > network)
#       * if you use 'sudo nano /etc/network/interfaces' it gives you a NTPD timesync error. Which is why step-4 method is used. 
#       * When you save, dietpi will perform an update&upgrade APT (takes a few minutes). 

# dietpi should now be on the latest version (6.2) and is connected to the internet. (providing your router is on the same subnet)
# now we must grab and run this script on the next boot, which will automate everything else which is required. 

# step-1: (as root) we will need to install git in order to execute a git pull command. So enter: sudo apt-get install git -y
# step-2: Now enter this folder, which is where this repo will copy to: cd /opt/
# step-3: we will now retrieve this WaveOS GitHub Repo with the command: git clone https://github.com/unclehowell/WaveOS.git
# step-4: now make the folder update daily/ on reboot and run itself. We do this with the following commands:
#          a) 'sudo nano /etc/rc.local' - then before the exit 0 line enter: 
#                  i.  rm -r /opt/WaveOS
#                  ii.  git clone https://github.com/unclehowell/WaveOS.git /opt/WaveOS
#                 iii.  chmod +x /opt/WaveOS/dietpi-to-wave.sh
#                  iv.  sh /opt/WaveOS/dietpi-to-wave.sh
#            * these can all be combined on one line using && between them
#          b) 'sudo crontab -e' - then enter at the bottom (same deal): 
#                   i.  rm -r /opt/WaveOS
#                  ii.  git clone https://github.com/unclehowell/WaveOS.git /opt/WaveOS
#                iii.  chmod +x /opt/WaveOS/dietpi-to-wave.sh
#                iv.  sh /opt/WaveOS/dietpi-to-wave.sh
#                    * also add this to drop me (or you) an email whenever an issue occurs:
#                      'curl -sm 30 k.wdt.io/X1ZiJpLGH/update'

# Normally we update & upgrade, but we want to make bootup as fast as possible, so this can be done later in the background
#           sudo apt-get update -y && sudo apt-get upgrade -y











  
