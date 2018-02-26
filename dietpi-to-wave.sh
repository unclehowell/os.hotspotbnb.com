# This is the highest priority. You have to change the dietpi image to operate as a WaveOS image;
# * The concept is a shell script which is run once and make the absolute minimal (local) alterations. 
# * All the rest will happen remotely. 
 
# step-1: insert the dietpi image onto an SD card and into the raspberry pi - making sure the screen is connected to see what you're doing
# step-2: login using ssh/ default dietpi:dietpi - then switch to root ('sudo su')
# step-3: change display, so you can see what you're doing: 'dietpi-config >1. display options > then in my case 'rpi touchscreen'. Then reboot
# step-4: Now set the ethernets default IP to static: 10.0.0.10 / gateway: 10.0.0.1 (visit: dietpi-config > network)
#       * if you use 'sudo nano /etc/network/interfaces' it gives you a NTPD timesync error. Which is why step-4 method is used. 
#       * When you save, dietpi will perform an update&upgrade APT (takes a few minutes). 

# dietpi is now on the latest version (6.2) and is connected to the internet. (providing your router is on the same subnet)
# now we must grab and run this script on the next boot, which will automate everything else which is required. 



  
