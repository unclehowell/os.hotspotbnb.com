  #!/usr/bin/env bash
	 
  # So the new plan for updates atm is for this file to periodically run updates.sh files, which will be named as versions e.g. 00-04-01.sh is OS version 4 update 1
  # If the update (file) already exists on the device, the wget and overwrite should fail (I wont use -r command), this should prevent a loop e.g. cron runs this file, this file gets update and runs it, cron runs this file, gets update again and runs again
  # furthermore each update will cneed to conclude by erasing its own file content, but not the file 
  # This way the updates will be carried out sequentially but it'll not be able to loop and the update will effectively be a run once, leaving a ghost/empty file so the update can be skipped on the next scheduled run of this file
	 
   cd /var/WaveOS/master/updates/current/
   wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/updates/current/00-04-01.sh
   chmod +x /var/WaveOS/master/updates/current/*
   sh 00-04-01.sh &
   sh 00-04-02.sh &
   sh 00-04-03.sh &
   sh 00-04-04.sh &
   sh 00-04-05.sh &
   sh 00-04-06.sh &
   sh 00-04-07.sh &
   sh 00-04-08.sh &
   sh 00-04-09.sh &
   sh 00-04-10.sh
   cd
  
