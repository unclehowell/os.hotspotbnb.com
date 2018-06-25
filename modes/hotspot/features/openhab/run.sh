#!/usr/bin/env bash

# straightforward install

# source https://docs.openhab.org/installation/linux.html

wget -qO - 'https://bintray.com/user/downloadSubjectPublicKey?username=openhab' | sudo apt-key add - ;
sudo apt-get install apt-transport-https -y ;


echo 'deb https://dl.bintray.com/openhab/apt-repo2 stable main' | sudo tee /etc/apt/sources.list.d/openhab2.list ;

sudo apt-get update -y ;

sudo apt-get install openhab2;

sudo apt-get install openhab2-addons; 

sudo systemctl start openhab2.service
sudo systemctl status openhab2.service

sudo systemctl daemon-reload
sudo systemctl enable openhab2.service

  # Learn about the current service status
  sudo systemctl status openhab2.service

  # (Re-)Start openHAB (background service)
  sudo systemctl restart openhab2.service

  # Stop the openHAB background service
  sudo systemctl stop openhab2.service
  
  # Get the service log since the last boot
  sudo journalctl -u openhab2.service -b

  # Make openHAB automatically start after booting the Linux host
  sudo systemctl daemon-reload
  sudo systemctl enable openhab2.service