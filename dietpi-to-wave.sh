
# WaveOS file location = /opt/WaveOS/dietpi-to-wave.sh

# This is the highest priority file of the whole WaveOS system. This guide & script changes a dietpi image to operate as a WaveOS image;
# * The idea is that this shell script will run everything, but only after we make some essential minimal changes to dietpi's custom config. 
# * most of the work will happen remotely, just follow the steps below and make sure the router which the WaveBox is connected to is:
#   IP: 10.0.0.1 .........and DHCP of Ethernet is = 10.0.0.2 - 10.0.0.254

################## PREPERATION #################
 
# step-1: 
########## download the latest dietpi image, burn onto an SD card 
# step-2: 
########## download the WaveOS dietpi.txt which matches your routers static ip and gateway and move it to the SD Card (overwrite existing)
# step-3: 
########## insert SD into Raspberry Pi and boot up - ( helps t0 have a screen connected to see what you're doing)

#  FYI:   The hotspot will boot up, connect to the internet, then update, upgrade, self-install, configure & enable the hotspot, hostname & menu. 
#  -----  Within 2 minutes (depending on existing internet speed), the users wireless device should detect the SSID "wave".
#  ----- By entering the default password "makeitwave" the device should now be connected to the Wave hotspot. 
#  ----- 

################## PREPERATION #################

# step-1: (as root) we will need to install git in order to execute a git pull command. So enter: sudo apt-get install git -y
# step-2: Now enter this folder, which is where this repo will copy to: cd /opt/
# step-3: we will now retrieve this WaveOS GitHub Repo with the command: git clone https://github.com/unclehowell/WaveOS.git
# step-4: now make the folder update daily/ on reboot and run itself. We do this with the following commands:
#          a) 'sudo nano /etc/rc.local' - then before the exit 0 line enter the following line of code: 
#         
#             rm -r /opt/WaveOS && git clone https://github.com/unclehowell/WaveOS.git /opt/WaveOS && chmod +x /opt/WaveOS/dietpi-to-wave.sh && sh /opt/WaveOS/dietpi-to-wave.sh
#                 
#             * add '-b slave --single-branch' after git clone to access beta

#          b) 'sudo crontab -e' - then enter at the bottom (same deal): 
#                  
#             rm -r /opt/WaveOS && git clone https://github.com/unclehowell/WaveOS.git /opt/WaveOS && chmod +x /opt/WaveOS/dietpi-to-wave.sh && sh /opt/WaveOS/dietpi-to-wave.sh
#                 
#            * add '-b slave --single-branch' after git clone to access beta

# Since WaveOS updates daily, the unit shouldn't fall behind with updates, so updates during bootup, shouldn't hold up the reboot;
           apt-get update
           apt-get upgrade -y
           apt-get autoremove -y
           
# Next we let another script execute so it can install all the DietPi apps - if they're already installed then the system is smart enough to skip this part

           chmod +x /opt/WaveOS/install-dietpi-apps.sh
           sh /opt/WaveOS/install-dietpi-apps.sh
           








  
