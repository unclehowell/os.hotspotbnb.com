# so the 'mode set-up perl scripts' will trigger the 'mode set-up shell scripts' which correspond to the 'mode-select menu buttons' pressed. 
# for this to work nicely some preperation has to be done

# this script assumes apache2 is configured for cgi in the hosting set-up process
# the assumptions unclude the apache2.conf file is the one from the repo and the target directory for the perl is /usr/lib/cgi-bin

# 1) the perl scripts have to be moved from the repo to the correct directories and permissions set

cp /var/WaveOS/modeless/features/modes/* /usr/lib/cgi-bin
chmod a+x /usr/lib/cgi-bin/*
