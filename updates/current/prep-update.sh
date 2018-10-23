#!/usr/bin/env bash


# As of version 0.4.1 / 24/06/2018 this is required for the update process
# the reason it's here and not in the update itself is paradoxical - but it can be removed from this file from 0.4.2 onwards
  sudo apt-get install subversion -y

  # needs to remove old update.sh file & get latest update.sh file and put in its place (just in case the updater itself has been updated):

   cd /var/UnclehowellOS/updates/current/
   rm -r update.sh
   wget https://raw.githubusercontent.com/unclehowell/UnclehowellOS/master/updates/current/update.sh
   chmod +x update.sh
   cd
   
   # next step - run the update
   sh /var/UnclehowellOS/updates/current/update.sh
   