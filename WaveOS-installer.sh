# location of this file /usr/lib/ 
#!/bin/bash

# remove the old version 
rm -r WaveOS

# download the latest version 
git clone https://github.com/unclehowell/WaveOS

# run the fileclerk (puts all the files from the latest version in the right places)
sh WaveOS/shazam.sh

