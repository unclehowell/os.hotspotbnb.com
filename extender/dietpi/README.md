Here's the source code for turning a dietpi config into an extender

1st we must make it easy to enter the SSID and password and connect to a network

Since it'll likely be layman (installers/ assemblers) doing this, maybe even end-users, there can be no SSH or linux coding. 
This is where RaspAP comes in. It's a nice hotspot menu. 
But before that we need to run a script which will install it. 

This was going to be a separate dietpi.txt from the hotspot, but then one of our team had the idea to use the same SD card, 
but make a little splash page menu where you can 'complete the installation' by selecting which mode you want the hotspot to run in e.g.
Hotspot Mode or Extender Mode. After this selection the autonomous script would run the custom configurations required. 
So I guess the question is what must happen before that point? 

First dietpi needs to be written to an SD card and the dietpi.txt needs altering to match the IP it will connect to in order to complete the installation using the internet. 
Then we need to jump from this point to the point where the assembler/ installer connects to the hotspot and specifies through a web browser which mode it will configure into.

* as a side note, the milestone thus far is autonomous setup of a wifi hotspot. 
So it's now a case of developing a menu and making it accessible via the hostname, so the installer/ assembler can select which mode the device will function as, before the installation resumes & completes (using the internet to finish up). 
But say we select extender mode and a script runs to configure this, it will boot off the assembler/ installer in order to switch from transmitter to receiver. 
Furthermore there need to be some bullet points before the assembler/ installer/ installer hits extender-mode, such as:

- ensure the HDMI is connected (not sure how convenient it'll be trying to wire to the router and connect via HDMI at the same time)
- But the assembler/ installer will need to be altered about removing the Ethernet cable (since the extender will be connected to the network via wifi after the install completes)
- there's something else I'm sure, here's the blank to fill in at a later date ....................

So for now I'll head back to the origional custom script (that dietpi.txt looks at) in order to make it do more than just create a Wi-Fi hotspot.
It will now need to do all the hostname broadcasting stuff, so that a user connected to the hotspot can type 'wave' in the browser and see a web page.
Then I'll need to make the 'complete installation' webpage appear when that hostname is entered into the address bar. 
Then I guess I'll need to make one of two scripts run, depending on which mode the device will operate as.
In the case Extender Mode is selected, I'll be right back to this point (so I guess I almost jumped the gun this evening starting here)
In any case the Extender Mode autonomous script will need to be written so it can be executed, which is when I'll come back to this article/ subdirectory.
