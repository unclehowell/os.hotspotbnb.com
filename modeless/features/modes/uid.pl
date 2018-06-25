#!/usr/bin/perl

# If the user selects the Hotspot mode of operation on the mode select menu, this script will run (via apache2 CGI)

system("/bin/bash cat /proc/cpuinfo | grep Serial > /var/www/html/uid.txt");
system("/bin/bash sed -i 's/Serial          : //g' > /var/www/html/uid2.txt");
system("/bin/bash /usr/lib/cgi-bin/uid2.txt > /var/www/html/uid.txt");
