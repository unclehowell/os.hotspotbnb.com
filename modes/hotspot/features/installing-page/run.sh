#!/usr/bin/env bash

cd /var/www/html
sed -i 's/frame_emby.html/frame_loading_emby.html/g' index.html > index2.html
mv index2.html > index.html
sed -i 's/frame_cameras.html/frame_loading_cameras.html/g' index.html > index2.html
mv index2.html > index.html
sed -i 's/frame_openhab.html/frame_loading_openhab.html/g' index.html > index2.html
mv index2.html > index.html
sed -i 's/frame_netstats.html/frame_loading_netstats.html/g' index.html > index2.html
mv index2.html > index.html
sed -i 's/frame_solar.html/frame_loading_solar.html/g' index.html > index2.html
mv index2.html > index.html
cd