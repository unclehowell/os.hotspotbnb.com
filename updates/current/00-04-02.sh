#!/usr/bin/env bash

RED='\033[0;31m'
NC='\033[0m' # No Color
printf "\n\n${RED}WAVEOS-version-0-4-1${NC} - The system will now update from version 0.4.1 to version 0.4.2\n\n"

# update the version number

cd /var/www/html/
sed -i 's/0.4.1/0.4.2/g' version.txt

# fix the cgi issue within apache (for mode-select to function)

# 1. Hosting.sh updated to fix all the cgi issues, so we just grab the latest WaveOS repo and re-run that

cd /var
rm -r WaveOS
git clone https://github.com/unclehowell/WaveOS.git
chmod +x /var/WaveOS/modeless/*
cd
sh /var/WaveOS/modeless/features/hosting.sh



RED='\033[0;31m'
NC='\033[0m' # No Color
printf "\n\n${RED}WaveOS is now at version 0.4.2${NC}\n\n" ;

cd

# Then we systematically erase the content of this file to avoid it running again. 
cd /usr/lib/WaveOS-updates
printf 'sleep 15\n sudo rm -r /usr/lib/WaveOS-updates/00-04-02.sh\n sudo touch /usr/lib/WaveOS-updates/00-04-02.sh\n' > 00-04-02-01.sh
chmod +x 00-04-02-01.sh
sudo sh 00-04-02-01.sh
cd

exit 0

