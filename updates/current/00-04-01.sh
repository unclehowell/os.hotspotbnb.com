#!/usr/bin/env bash

# update the brand logo

cd /var/www/html/images/thumbs/
rm -r 3.png
wget http://makeitwave.com/img/wave_logo.png
mv wave_logo.png 3.png
cd


# self-distruct to ensure run once

cp /dev/null 00-04-01.sh
