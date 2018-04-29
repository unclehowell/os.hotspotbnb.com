
# 1) Hosting: The Pi will need to have hosting capabilities so that the menu can be hosted

sh /var/WaveOS/modeless/features/hosting.sh

# 2) Then the menu needs to be placed into the www/ directory so it appears in the browser when the hostname is entered

sh /var/WaveOS/modeless/features/multistep-menu/run.sh

# 3) Then we need to get the menu up on the screen to make it even more obvious that a mode needs to be selected from the menu
# instead of trying to get guacamole working (so the users can control what's on the screen), the menu on the screen just needs to instruct hostname access via a mobile etc

sh /var/WaveOS/modeless/features/kiosk-mode/run.sh


# The IP will need to change to avoid conflic with a 2nd, 3rd device which may connect to the network. 
# For this to happen, we may need to scan the network, see which IP's are available and allocate one as as fixed-IP. Solution Needed Here!


