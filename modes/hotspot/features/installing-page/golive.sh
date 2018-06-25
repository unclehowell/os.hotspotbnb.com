#!/usr/bin/env bash

cd /var/www/html
sed -i 's/frame_emby.html/http://192.168.42.1:8096/g' index.html > index2.html
mv index2.html > index.html
sed -i 's/frame_cameras.html/http://192.168.42.1:8096/g' index.html > index2.html
mv index2.html > index.html
sed -i 's/frame_openhab.html/http://192.168.42.1:8080/habpanel/index.html#//g' index.html > index2.html
mv index2.html > index.html
sed -i 's/frame_netstats.html/http://192.168.42.1:19999/g' index.html > index2.html
mv index2.html > index.html
cd