#!/usr/bin/perl

# If the user selects the Hotspot mode of operation on the mode select menu, this script will run (via apache2 CGI)

system("/bin/bash /var/UnclehowellOS/modes/hotspot/run.sh");
