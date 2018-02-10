# First things first - presuming the unit has all the dependancies and is up to date as per the shazam.sh script

#### must reverse engineer what has been done already - a tonn of work #####
# all the dietpi apps (install & configure)
# Emby, EmonCMS, 
# OpenHAB, Raspap etc (instsall & configure)
#########################################CONCLUSION ##########################
# for now we'll just build off the latest SD Card image (v1.4) ####

#### core layout - Customisation App ####
sudo rm -f /var/www/html/menu/index.html
sudo cp WaveOS/architecture/bespoke-UI/www/menu/index.html /var/www/html/menu/index.html



