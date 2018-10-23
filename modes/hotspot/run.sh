#!/usr/bin/env bash

# go

# install hotspot-mode: features

# remove the mode-select menu
rm -r /var/www/html/*

# install dashboard
sh /var/UnclehowellOS/modes/hotspot/features/dashboard/run.sh ;

# app installing page - places an 'app installing page' in the dashboard frame until the apps installed
sh /var/UnclehowellOS/modes/hotspot/features/installing-page/run.sh ;

# emby - media & tv
sh /var/UnclehowellOS/modes/hotspot/features/emby/run.sh ;

# motioneye - ipcctv
sh /var/UnclehowellOS/modes/hotspot/features/motioneye/run.sh ;

# openhab - smart home
sh /var/UnclehowellOS/modes/hotspot/features/openhab/run.sh ;

# pihole - faster internet
# sh /var/UnclehowellOS/modes/hotspot/features/pihole/run.sh

# emoncms - energy monitoring
# sh /var/UnclehowellOS/modes/hotspot/features/emoncms/run.sh

# net stats
sh /var/UnclehowellOS/modes/hotspot/features/netstats/run.sh ;

# remote access
sh /var/UnclehowellOS/modes/hotspot/features/remoteaccess/start.sh


