 Operating  System  |  <a href="https://mega.nz/#!ZKYDGZiI!AhXw3_EXam4vBaWzHyjTHMpd8P4s7ZBJgcuk37s7-ao" target="_blank"> WaveOS (v0.1.4) - 654MB </a>  </br> </br> <a href="https://mega.nz/#!ZKYDGZiI!AhXw3_EXam4vBaWzHyjTHMpd8P4s7ZBJgcuk37s7-ao" target="_blank"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaeH-_N07SOt_mhm31HnhPWPuX_K4Ky7QykZnR5hLGnRkku7Go" width="110" > </a>
:--------------------------: | :-------------:
 Features | <p style="text-align: left;">x5 times faster internet </p> <p style="text-align: left;">x10 more security & privacy </p> <p style="text-align:left;">Smart Home Control (IoT) </p> <p style="text-align:left;">Energy Monitoring </p> <p style="text-align:left;"> Multi-Room Audio/ Video inc.</p> <p style="text-align:left;"> IPCCTV </p> <p style="text-align:left;">Self-Updating & Upgrading  </p> <p style="text-align:left;">IPTV - Live Streaming
 Hardware | <a href="https://github.com/unclehowell/WaveOS/blob/master/parts-list.csv" target="_blank"> WaveBOX (v0.1.0) </a> </br> </br>  <img src="http://image.ibb.co/cd0n0x/wave_box_small.png" >

WaveOS is FREE. It's very easy to set-up. And it's even easier to operate.
This technology transforms our old Wi-Fi Routers into powerful smart home-control, energy-monitoring & multi-room media systems.
In the near future we will even be rolling out an update which makes your internet completely free. 
By using WaveOS technology your bills from your ISP will actually stop - at least that's what can happen with enough users. 
This is a very exciting technology for many people, businesses and industries. 

Features      | i | ii | iii 
------------- |:-------------: |:-------------: |:-------------: 
|Speed Booster | x | x | x 
|Media Library |  | x | x 
|IPCCTV |  | x | x 
|Energy monitor |  | x | x
|Home Control |  | x | x 
|Live TV  |  |  | x 
|Proximity  |  |  | x 
|1Yr Support (USD) | $120 | $300 | $600

# What you'll Need

a) Everything listed on the <a href="https://github.com/unclehowell/WaveOS/blob/master/parts-list.csv">Parts List</a>

b) A Computer/ Laptop (which will accept your Mini SD Card)

e) The following FREE Programs:

   -  7-Zip - http://www.7-zip.org
   -  Win32 - http://www.softpedia.com/get/CD-DVD-Tools/Data-CD-DVD-Burning/Win32-Disk-Imager.shtml

#  Get Started 

a) Download WaveOS (see above)
  
b) Uncompress using 7-Zip.org

    - This expands it to the size of your SD card (32GB recommended)

c) Burn WaveOS to your Micro SD Card using Win32 Disk Imager

    - This process takes a few minutes to complete
    
d) Make sure your internet router has been configured with the gateway and ethernet dhcp range (10.0.0.1 and 10.0.0.2 - 254)

    - you can also turn off you existing wifi at this point if you're feeling confident, to save you going back
    - perhaps reboot your internet router at this point, just to be safe

e) Connect your WaveBox (Raspberry pi) into your router using the recommended ethernet cable

f) Insert your WaveOS SD Card into the WaveBox and power it up

    - The first boot can take a while before the Wi-Fi Hotspot is Broadcasted

g) Connect to the WaveOS Wi-Fi Hotspot using the default password

    - The default Wi-Fi Hotspot ID: wave
    - The default Wi-Fi password is: makeitwave

h) Open the WaveOS router menu in your web browser:

    - The default hostname is: wave (http://wave/)
    
Help & Support

    - Menu access also works through the wired connection: 10.0.0.10
    - You may need to change your routers DHCP to the following (and reboot it) for WaveOS to function:
    - IP Range: 10.0.0.2 - 10.0.0.254  , Subnet: 255.255.255.0 , Gateway: 10.0.0.1, DNS: 8.8.8.8, 8.8.4.4

## Developers

The WaveOS SD Card image, along with the automated scripts featured in this repository are plug and play. 
If you're a developer and want to reverse engineer how we evolved dietpi into WaveOS and all the gubbings thereafter, you can following the journey right here by reading <a href="https://github.com/unclehowell/WaveOS/blob/master/dietpi-to-wave.sh">dietpi-to-wave.sh</a>

------------------------------------------------------------------------------------------------------------------------

= Full Description =

WaveOS is a Linux based operating system designed to run a number of applications and technologies which collectively make your internet access free. What you will notice when you first connect to this new Wi-Fi hotspot (and enter the hostname 'wave/' into your web browser) is a selection of applications. Unlike most apps, these are not stored on your phone or online, but on your home/business network. And can even be accessed remotely for added benefit. The basic concept is, the more you use this system and its applications, the faster this free internet network can scale. 

The WaveOS apps today include:
 - Emby: IPTV and Media Library with DLNA and multi-user features 
 - EmonCMS: Energy Monitoring for your home & small business
 - NetStats: Visually stunning statistics to see CPU, storage, memory etc
 - OpenHAB: Home Control, for use with smart lights, power sockets, switches etc
 - MotionEye: IPCCTV for home and small business surveillance
 - Guacamole/ Weaved: for remote access to the WaveOS Dashboard (without having to tinker with opening ports on your Wi-Fi Router)
 
We are also working on the following applications which will be included in the next version release: 
- Wallet: a ready-to-go Virtual Currency Wallet App for your home or small business 


 
