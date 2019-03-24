# WaveOS_New
WaveOS Version 5+. Rebuilt using RetroPie Image to feature Gaming & Virtual Gamepads.
4G/LTE Support also introduced. 
A USB Dongle via USB will function until the hardware solution is ready.
(The hardware solution will include an LTE Cat 1 Modem Hat on a Pi Zero, with a bullion bar shaped 3D plastic shell).  

Introduction
--------------------------------------------------------

Before switching cores, we need to get the theory of WaveOS Version 5.0 working in practice.
There's a lot of places to begin, such as installing raspian or dietpi (as was the case in version 4.0). 
However, at this stage, we're going to build this proof of concept using the latest RetroPie Image. 
Then the modified SD Card image can be shrunk, compressed and sent out to beta testers and investors. 

For the public release (version 6) we plan to iron out bugs and attempt to re-build again using PiCore (lightweight).
Furthmore the image will be under 100Mb, since the system will self-build and install on initial boot (only). 

Building this prototype is near enough built from memory. 
Our Hardware is an armv7 BCM2835 Raspberry Pi3 and a ZTE Hauwaei 4G/LTE > Wi-Fi Dongle. 
So here goes .. WaveOS Version 5 Prototype: 


STEP 1: Internet Access
--------------------------------------------------------
New with Version 5.0 is installing the HSPA+/4G/LTE Dongle/ HAT:

- Here's [the guide](https://www.thefanclub.co.za/how-to/how-setup-usb-3g-modem-raspberry-pi-using-usbmodeswitch-and-wvdial) we followed to get the internet running via the Hauwei dongle, which is connected via USB on the prototype. On the actual hardware solution there's a 4G/LTE CAT1 HAT Board, but we'll come back to that later. 

- we open /etc/ppp/options and enabled ipcp-max-failure (unhash) and set it to 30 .And enabled ms-dns .And set the ip to a default one (8.8.8.8 8.8.4.4). This was just a good practice according to what we read, not sure what difference it might have made. 


STEP 2: Wi-Fi Hotspot
--------------------------------------------------------
Next we make it a Wi-Fi Hotspot as well (effectively transforming the rpi3 into a standard dongle: 

- there was a [long tangent of trial and error](https://pastebin.com/V028nYqN) to get the Wi-Fi Hotspot broadcasting with internet access and localhost apps, dashboard etc. 
  but then we followed [this guide](https://esther.codes/post-pi_router_story/) and got a result. 

- At this point we can/ should be able to access the device via ssh using the wifi to the dongle (it's a wifi hotspot as well) or via the wifi the rpi3 is broadcasting. 
	
Now we have a celluar to Wi-Fi hotspot.  Running the command 'netstat -r command' gives us this: 

		Kernel IP routing table
		Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
		default         192.168.0.1     0.0.0.0         UG        0 0          0 usb0
		10.3.141.0      0.0.0.0         255.255.255.0   U         0 0          0 wlan0
		link-local      0.0.0.0         255.255.0.0     U         0 0          0 wlan0
		192.168.0.0     0.0.0.0         255.255.255.0   U         0 0          0 usb0 


	
STEP 4: Applications
--------------------------------------------------------

All the apps need installing according to their own installation guides: 

+ Wave Dashboard - Installing dependancies from WaveOS version 4.0 wasn't difficult.  Basically just apt-get install followed by the packages e.g. Apache2, Python, etc etc   
   - Then we clone the dashboard from the [website demo](https://makeitwave.com/demo.html). Some small changes are made to transform it from a demo to an actual UI
   -  In the U4VL Streaming Server files there's a face recognition app which (with some small tweaks) serves as a nice dual-screen/ web-based display for within the 'games' tab of the Wave Dashboard. Cgi has been a headache. This is a requirement for the buttons on the menu to trigger shell and perl scripts, which reboot the device, escape kiosk mode, launch the gaming emulation station etc. 
	
+ Raspi-AP GUI - So the user can change the Wi-Fi SSID & Password with a UI (no coding required)
   - Need to get rid of the password access to all the apps. Motioneye, Emby, PiHole etc. Until there's a one for all administrator level solution. 
	
+ PiHole - This is likely to be removed once the ad replacement part comes into play, but for the meanwhile it's awesome for all the things Raspi Access Point is missing in its   DHCP and cache. PiHole has something called an FTL-Engine which just rocks, plain and simple. Point to note, the configuration is as follows: 
	
-  enabled DHCP Server 10.3.141.50 - ...254 and set router to 10.3.141.1
-  Listen only on interface wlan0
-  Google & Cloud Flare as DNS
-  enable DHCP rapid commit (fast address assignment)
-  set xframe to ALLOW in the config, so that it will appear in the Wave Dashboard
					

+ OpenHAB - standard setup:

- Was a few conflics, like tomcat using port 8080, so removed tomcat altogether, not needed. 
- Also, javasdk isn't the best option anymore, openhab-config menu presents other solutions. 
- Linked to a Wemo Wi-Fi plug, added a button and BOOM! ... controlling a fan from every device in the house. 

+ MotionEye - standard install:
	
- added 1 IP Camera just to prove it works. 
			
+ Emby (iptv, media center etc):
	
- bummer alert! recently, Emby made Live TV (even IPTV) a premium paid feature:
- So apparently some cool people did a fork called jellyfin, but as of March 2019 Jellyfin doesn't work on arm7 processors, no matter which way we try to install.
- so there's some other solutions like mythweb (myth-tv). We also considered iptvx (port:8085), but that's a digression. 
- What we have decided to do is a 'jellyfin' ourselves:
	- get the last free iptv version of emby wget https://github.com/MediaBrowser/Emby.Releases/releases/download/3.5.2.0/emby-server-deb_3.5.2.0_armhf.deb -O 41.deb
	- look at dependacies: dpkg-deb -I 41.deb (seems to be one big one, that's libc6. checked this with command: apt-cache policy libc6)
	- install it with command: dpkg -i 41.deb
	- prevent it from updating with the command: sudo apt-mark hold emby-server
	- start with command: service ebmy-server start , (starts on reboot thereafter, no cronjob etc needed for that)

	- for future reference, ONLY if the dependacy libc6 isn't there .....		
	- get this dependacy: http://deb.debian.org/debian/pool/main/g/glibc/libc6_2.24-11+deb9u3_armhf.deb # Download the Stretch package
	- install it with the command: dpkg -i libc6_2.24-11+deb9u3_armhf.deb # Install the Stretch package

	- removed the alert to update as well. Edited dashboard.html the same [way jellyfin does it](https://github.com/jellyfin/jellyfin/pull/164/files).
	- emby lets you add custom css in settings, so this went in as well to fix a scrolling issue: .dashboardDocument .skinBody {overflow: scroll!important;}

+ Then added some iptv channels with epg data and a sample (licence free) short movie and music:
	
	- Download XMLTV [from here](https://github.com/rocky4546/script.xmltv.tvheadend/releases)
	- Unzip the release
	- Run the command ./install.sh
	- wget the [zap2xml.pl](http://zap2xml.awardspace.info/) file and placed in ~/xmltv/ & set permission (chmod 775 zap2xml.pl)
	- change the xx.zap2xmlrc to .zap2xmlrc and edited it to have the right email/password and username. Then placed it in home folder ~
	- generated an xmltv_default.xml file by running the command: ./zap2xml.pl -D -S 3
	- Took a while to get the EPG.
	- Renamed the xmltv_default.xml output file to xmltv.xml (this part will all be done remotely in the beta release, so clients fetch the epg output twice daily)
	- went into emby. linked to the m3u file in Wave's repo. and linked to the xml output & mapped the two together. 
	- BOOM! A Media Center with IPTV & EPG.
	- BUT US CHANNELS ONLY, NEED UK
	- got hold of UK channel streams

+ Then added a sample movie (Bunny Buck), but in x264 not mp4 (in order to test the real time transcoding and overclocking, especially across multiple devices. ) 
  
		
STEP 5: Customisations
--------------------------------------------------------

There's a few customisations which bring it all together:

- for 2nd screen viewing, we just modified a uv4l demo project called face detect. And used port 9080, since 8080 has issues. 
- kiosk mode, which brings the menu up on boot, instead of retropie's emulationstation
- more, will list here as they get done/ figured out
- made clean: removed all welcome text/ intro's/ logo's etc in the command line (seen between events): ~/.bashrc
- stopped HDMI from sleeping by;
	-	editing /etc/rc.local to include: setterm -blank 0 -powerdown 0
	-	editing /etc/X11/Xsession.d/40x11-common_xsessionrc to include: setterm -blank 0 -powerdown 0; xset s off; xset -dpms
- openhab on mobile doesn't show well. So the mobile dashboard UI (there's a seperate on for TV), needs what the game controller has e.g. a notice to say turn your device to landscape before the UI is displayed. 
- chromium-browser in kiosk mode, with the Wave Dashboard as the homepage (a TV homepage UI needs creating, different from the mobile one e.g. no gamepads needed to begin with)
- can also be upgraded from 65 to latests. As detailed at the end of [this forum post](https://raspberrypi.stackexchange.com/questions/92301/is-it-possible-to-upgrade-chromium-past-v65)


STEP 6: Version 5.0 Release (Try it for Yourself) 
--------------------------------------------------------

The shrinking and compressing of this image is a major point. Since it's not straightforward. Had to get virtualbox installed, with enough space to copy pishrink and the image into it (since shared file approach is a nightmare for pishrink). 


STEP 7: Cheats & Hacks
--------------------------------------------------------

- the dashboard is running in chromium-browser, so a simple CONTROL + N will open a new tab (to view youtube, webpages etc). To switch between tabs it's CONTROL + SHIFT + TAB. 
- FYI - The Wave Dashboard will run in background when you open new tabs, so feel free to play music while you surf the web. 
- The only method to return to the dashboard seems to be to close all tabs. But you can type localhost in a new tab as well to bring the dashboard back up. But this isn't advised since you can overload the system if you have multiple instances of the dashboard open in the background. Will need to revisit this. 


Final Notes
--------------------------------------------------------

Nothing is mentioned about the monetisation, but here's some notes;

-   the JSE Mining privacy bar prompts in kiosk mode after boot and the first tab is the emby server, which displays a 'still loading' text. This is ugly. 
-   there needs to be a clean 'loading apps' screen while openhab, emby, motioneye, pihole etc are all loading. While that's happening on initial boot, users will have a moment to accept the mining prompt. 

Also need to change 'settings' to 'more' and make the settings menu look more like addition apps:

-   web browser mode toggle (re-load kiosk mode with address bars)
-   game mode toggle (logs out of kiosk mode to command line and runs emulation station
	- games can also get stuck and there's no escaping them with the virtual game controllers, so there should be a button here for that too
-   In the new browser tab in this demo prototype build of version 5 it would also be good to have netflix and youtube as web apps
-   craspi-Ap and pihole already here, but as icons, not links, it'll look much cooler. 
-   U4VL second screen option should be here and only display if conditions are met e.g. chrome with support, viewport size etc (basically a laptop). 
-   the free internet aspect can also be in here. It can display the ISP details, rate for data, revenue generated and if qualifying, users can opt-in for free internet. 
		
Also, to commemorate our version of technology projects others began, we should name our forks of these apps accordingly:
-   emby henceforce becomes WavePlayer
-   uv4l henceforce becomes WaveCast
-   openhab henceforce becomes WaveHomeControl
-   motioneye henceforce becomes WaveSurveillance
-   raspi-ap henceforce becomes WaveHotspot
-   ppp & usb_modemswitch to become WaveCell
		

PACKAGES IN VERSION 5
--------------------------------------------------------

Too many too list here. Something in the region of 1700. A Past bin link for this is coming ... 

