#!/usr/bin/env bash

# update the logo on the mode select menu
# updated in beta branch for future builds e,g, WaveOS version 0.5.0

cd /var/www/html/images/thumbs/
rm -r 3.png
wget http://makeitwave.com/img/wave_logo.png
mv wave_logo.png 3.png
cd


# self-distruct to ensure run once

cp /dev/null 00-04-00.sh
