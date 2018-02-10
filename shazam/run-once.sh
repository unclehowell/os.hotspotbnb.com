# this update is always designed to run once and self destruct on the local machine, to prevent bugs and abuse of processing resources
# it's basically one and done bug fixes
# just need to remember to remove it before the next update 

#### core layout - Customisation App ####
sudo rm -f /var/www/html/menu/index.html
sudo cp WaveOS/architecture/bespoke-UI/www/menu/index.html /var/www/html/menu/index.html

#### New Customisation app tab - system logging  ####
sudo apt-get install apt-transport-https -y
wget https://packages.graylog2.org/repo/packages/graylog-2.4-repository_latest.deb
sudo dpkg -i graylog-2.4-repository_latest.deb
sudo apt-get update
sudo apt-get install graylog-server

sudo rm -f WaveOS/shazam/run-once.sh
