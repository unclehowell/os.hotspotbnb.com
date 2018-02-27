WaveOS is based on dietpi

The image file for dietpi (currently version 6.2) is embedded with the following code, which grants remote access and transforms it into a WaveOS Hotspot: Here's the logic (the actual code is coming soon); 

There's one small modification to the dietpi image. 
Heres that modification. 

1. Establish Internet (the startup script - the only mod to the dietpi image): 
* the script is based in 
 a) configure fixed IP & gateway (10.0.0.10/ 10.0.0.1)
 b) on successful ping, place WaveOS-runonce into startup
 c) restart
 
 * WaveOS-runonce will then do all the pre-requisit so that WaveOS can install:
 
 a) upgrade & upgrade -y
 b) install git
 c) sh WaveOS-updater: 
       - ensure WaveOS-updater is run daily
       - git pull the repo
       - run the repo executable
  
WaveOS

 
 
 
 c) change the hostname to 'wave' once remote access has auto-configured itself. 
 d) retrieve the menu and configure (so the users see a progress bar for initial set-up if they enter 'wave' in the address bar)
 e) install & configure packages (pihole, wifi hotspot mode)
 f) enable remote ssh access by changing the hostname to the processors uid - https://docs.dataplicity.com/docs/install-dataplicity-on-many-devices
 
 
 
* the reason why the WaveOS image is so thin, is so





