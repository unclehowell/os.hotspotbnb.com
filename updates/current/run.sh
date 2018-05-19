   #!/usr/bin/env bash
   
   # needs to get yesterdaysdate.sh from update folder and place in WaveOS updates folder
   
   cd /var/WaveOS/master/updates/current/
   wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/updates/current/datenotsetyet.sh
   
   # needs to set permissions so it can execute
   
   # needs to execute