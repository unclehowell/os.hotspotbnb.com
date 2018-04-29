#######################################
#
# Start up script for running the
# Chromium web browser full screen
#
#######################################

# Set the X display
export DISPLAY=":0"

# tune the screen blanking time - time in seconds (standby, suspend, off)
# All numbers are time in seconds
# default value
# xset dpms 600 600 600 &
# 1 minute blank time
xset dpms 60 60 60 &

# start the window manager - needed for the kiosk to fill the entire screen
/usr/bin/openbox &

# start full screen web app
# change the URL if Roon Web Controller is running on a different system
/usr/bin/chromium-browser --kiosk http://localhost/