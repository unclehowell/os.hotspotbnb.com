# this update is always designed to run once and self destruct on the local machine, to prevent bugs and abuse of processing resources

#### core layout - Customisation App ####
sudo rm -r /var/www/html/menu/index.html -y
sudo cp WaveOS/architecture/bespoke-UI/www/menu/index.html /var/www/html/menu/index.html -y
