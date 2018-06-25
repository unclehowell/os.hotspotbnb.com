
# The Update/ bug fix process

## Step 1

In the boot-up.sh script, which runs after dietpi is installed and upgraded to the latest version, you will see this line of code

```
mv /var/WaveOS/updates/current/prep-update.sh /etc/cron.daily/
chmod +x /etc/cron.daily/prep-update.sh
```

# this puts the file pre-update.sh into the cron system so it will run daily, and permission are set so the file can execute commands

## Step 2

The pre-update script (which runs daily) gets the latest copy of the update process, then sets permissions and runs it 

```
 cd /var/WaveOS/updates/current/
   rm -r update.sh
   wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/updates/current/update.sh
   chmod +x update.sh
   cd
   
   # next step - run the update
   sh /var/WaveOS/updates/current/update.sh
```

## Step 3

The update script will place the latest update scripts onto the device, set permissions, then run them one at a time
To prevent falling into a loop, the end of each script contains a script that self-erases the content of the file

```
  cd /var/WaveOS/master/updates/current/
   wget https://raw.githubusercontent.com/unclehowell/WaveOS/master/updates/current/*
   chmod +x /var/WaveOS/master/updates/current/*
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
```

By doing this, the files aren't overwritten on the next update, but they're still run in sequence, so the previous updates are effectively skipped.  
Each update script is designed to update units on the network to the latest version, using the latest repo
The version number is placed in a text file called version.txt in the web-server root directory e.g. /var/www/html/version.txt

The version numbers work like this 00-00-00 and are presented like this 0.0.0 - at the time of writing this the latest image is 0.4.0
There's currently one script to patch existing users, taking them up to version 0.4.1
The version number is displayed at every location possible. On the mode select menu and on the dashboard. 
 
## Step 4

Here's the latest template for each update script

```
# beginning - bla bla blah script, whatever the update/ patch is
# ending - self erase the content of this script file so it doesn't run again

```
