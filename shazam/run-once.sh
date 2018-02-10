# this update is always designed to run once and self destruct on the local machine, to prevent bugs and abuse of processing resources
# it's basically one and done bug fixes
# just need to remember to remove it before the next update 

#### core layout - Customisation App ####
sudo rm -f /var/www/html/menu/index.html
sudo cp WaveOS/architecture/bespoke-UI/www/menu/index.html /var/www/html/menu/index.html

#### New Customisation app tab - system logging  ####

