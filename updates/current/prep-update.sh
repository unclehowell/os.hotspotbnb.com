#!/usr/bin/env bash

  # needs to remove old update.sh file & get latest update.sh file and put in its place (just incase the updater itself has been updated):

   cd /var/WaveOS/updates/current/
   rm -r update.sh
   wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/updates/current/update.sh
   chmod +x update.sh
   cd
   
   # next step - run the update
   sh /var/WaveOS/updates/current/update.sh