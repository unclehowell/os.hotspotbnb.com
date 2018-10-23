#!/usr/bin/env bash

RED='\033[0;31m'
NC='\033[0m' # No Color
printf "\n\n${RED}UnclehowellOS-version-0-4-1${NC} - The system will now update from version 0.4.1 to version 0.4.2\n\n"

# update the version number

cd /var/www/html/
sed -i 's/0.4.1/0.4.2/g' version.txt

# fix the cgi issue within apache (for mode-select to function)

# 1. Hosting.sh updated to fix all the cgi issues, so we just grab the latest UnclehowellOS repo and re-run that

cd /var
rm -r UnclehowellOS
git clone https://github.com/unclehowell/UnclehowellOS.git
chmod +x /var/UnclehowellOS/modeless/*
cd
sh /var/UnclehowellOS/modeless/features/hosting.sh

# introduce the UID of the device (will happen during first boot on new installs)
sh /var/UnclehowellOS/modeless/features/uid/run.sh

RED='\033[0;31m'
NC='\033[0m' # No Color
printf "\n\n${RED}UnclehowellOS is now at version 0.4.2${NC}\n\n" ;

cd

# Then we systematically erase the content of this file to avoid it running again. 
cd /usr/lib/UnclehowellOS-updates
printf 'sleep 15\n sudo rm -r /usr/lib/UnclehowellOS-updates/00-04-02.sh\n sudo touch /usr/lib/UnclehowellOS-updates/00-04-02.sh\n' > 00-04-02-01.sh
chmod +x 00-04-02-01.sh
sudo sh 00-04-02-01.sh
cd

exit 0

