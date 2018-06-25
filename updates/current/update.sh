  #!/usr/bin/env bash
	 
  # So the new plan for updates atm is for this file to periodically run updates.sh files, which will be named as versions e.g. 00-04-01.sh is OS version 4 update 1
  # If the update (file) already exists on the device, the wget and overwrite should fail (I wont use -r command), this should prevent a loop e.g. cron runs this file, this file gets update and runs it, cron runs this file, gets update again and runs again
  # furthermore each update will need to conclude by erasing its own file content, but not the file 
  # This way the updates will be carried out sequentially but it'll not be able to loop and the update will effectively be a run once, leaving a ghost/empty file so the update can be skipped on the next scheduled run of this file
  
  # remove the old updates folder and get the latest one
   cd /var/WaveOS/
   rm -r updates
   svn checkout https://github.com/unclehowell/WaveOS/trunk/updates
  
  # cp scripts to the WaveOS-updates folder
   mkdir /usr/lib/WaveOS-updates # if it exists already, this will be skipped. and this line can be removed in future versions, 1 less error
   cp /var/WaveOS/master/updates/current/* /usr/lib/WaveOS-updates # shouldn't override the ones that exist in the target directory, if my understandings right
   cd /usr/lib/WaveOS-updates # go into the folder and run the updates in sequence. 
   sh 00-04-01.sh ;
   sh 00-04-02.sh ;
   sh 00-04-03.sh ;
   sh 00-04-04.sh ;
   sh 00-04-05.sh ;
   sh 00-04-06.sh ;
   sh 00-04-07.sh ;
   sh 00-04-08.sh ;
   sh 00-04-09.sh ;
   sh 00-04-10.sh
   cd
  
# here's where it gets good. If an update script was made, let's say version 0.4.2, then only files 00.04.01 will previously exist. 
# when 00-04-01 tries to copy across it will fail because the file already exists. but when this script tries to run 00-04-01 the content is empty and it's skipped. 
# this is because, if the scripts already run, the self-destruct script inside the update file erases it's content to avoid a loop.  

# don't forget, if the updates go beyond xx-xx-10 this list needs extending, but hopefully by then we'll be onto the next version xx-x?-xx