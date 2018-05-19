  #!/usr/bin/env bash
  
   
   # Updates should be consolidated into one script/patch file with the date as the name
   # what happens now is this update file preps the run.sh file, to run that script/patch file
   # so the final part of deploying a script/patch is to enter its filename/date below
   # the cronjob will pull the latest version of the update file and run it
   # the patch/script should be moved from the 'updates/current' folder and put into the 'updates/old' folder after the clients systems have all updated
  
     # sed 's/datenotsetyet/20180518/' run.sh > run.sh
     # mv run2.sh run.sh
     # cd 
	 
  # FOR NOW, INSERT THE LINK TO THE DAILY UPDATE SCRIPT HERE, MANUALLY
	 
   cd /var/WaveOS/master/updates/current/
   wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/updates/current/20180518.sh
   chmod +x 20180518.sh
   sh 20180518.sh
   cd
   
  
    # later this process can be trimmed down and fixed up a bit
    # sed -i "/^app_date=/capp_date=\"$(date +%m/%d/%Y)\".sh" run.sh > run2.sh
  