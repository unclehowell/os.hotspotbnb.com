
# The Hotspot will already been set-up using dietpi.txt (ssid: wave-hotspot, password: makeitwave)
# point to note: HOSTNAME=DietPi is left as is in dietpi.txt - because if we use wave it could cause conflic if there's already a hotspot set-up on the network with the hostname Wave, while an extender is being configured.

# The next steps are:

# 0) generate a UIP - something like this: https://github.com/upgoingstar/IP-Generator/blob/master/ipgenerator.py

# 1) Processor UID > Hostname: this avoids conflic on network with other hostnames & will make accessing the mode-select menu easier (providing the assembler writes the UID on the packaging)

WaveOS/server/cross-device-scripts/features/broadcast-hostname.sh
sudo sh var/WaveOS/server/cross-device-scripts/features/backdoor/remote-access.sh

# 2) Hosting: The Pi will need to have hosting capabilities so that the menu can be hosted

sudo sh var/WaveOS/server/cross-device-scripts/features/hosting.sh

# 3) Finally the menu needs to be placed into the www/ directory so it appears in the browser when the hostname is entered

sudo sh WaveOS/server/cross-device-scripts/features/multistep-menu/run.sh


# The IP will need to change to avoid conflic with a 2nd, 3rd device which may connect to the network. 
# For this to happen, we may need to scan the network, see which IP's are avaliable and allocate one as as fixed-IP. Solution Needed Here!


