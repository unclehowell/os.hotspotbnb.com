# If the user selects the Hotspot mode of operation on the mode select menu, this script will run (via apache2 CGI)

#!/usr/bin/perl
print "Content-type: text/html\n\n";
print "Hello, World from the /usr/lib/cgi-bin - this script will set-up repeater-rx mode";