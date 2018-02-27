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
|1Yr Support (USD) | $120 | $240 | $360

# What you'll Need

a) Raspberry Pi 3: https://www.raspberrypi.org/products/raspberry-pi-3-model-b/

b) 32GB Micro SD Card

c) Ethernet Cable (standard)

d) Mini USB Power Source (1500mA/5V) e.g. standard Phone Charger

e) A Computer/ Laptop (which will accept your Mini SD Card)

F) The following Programs:

   -  7-Zip - http://www.7-zip.org
   -  Win32 - http://www.softpedia.com/get/CD-DVD-Tools/Data-CD-DVD-Burning/Win32-Disk-Imager.shtml

#  Get Started 

a) Download WaveOS version 0.1.4: https://mega.nz/#!ZKYDGZiI!AhXw3_EXam4vBaWzHyjTHMpd8P4s7ZBJgcuk37s7-ao

    - The file size is 2GB - WaveOS contains more than 200,000 folders and files
    
b) Uncompress using 7-Zip.org

    - This expands it to 32GB, so make sure you have space on your Hard drive

c) Burn WaveOS to your Micro SD Card using Win32 Disk Imager

    - This process takes around one hour to complete 

d) Insert the WaveOS SD Card into the Raspberry Pi and power it up

    - The first boot can take upto 15 minutes before the Wi-Fi Hotspot is Broadcasted
    - In some cases it can take 10 more minutes for the services to all start (harmoniously)

e) Connect to the WaveOS Wi-Fi Hotspot using the default password

    - The default Wi-Fi Hotspot ID: wave
    - The default Wi-Fi password is: makeitwave

f) Open the WaveOS router menu in your web browser:

    - The default hostname is: wave (http://wave/)
    
Help & Support

    - If this fails for any reason, try the default IP: 192.168.42.1
    - Menu access also works through the wired connection: 10.0.0.11
    - You may need to change your routers DHCP to the following (and reboot it) for WaveOS to function:
    - IP Range: 10.0.0.2 - 10.0.0.254  , Subnet: 255.255.255.0 , Gateway: 10.0.0.1, DNS: 8.8.8.8, 8.8.4.4
    - <a href="https://github.com/unclehowell/WaveOS/blob/master/shazam/users.sh">user profiles, Username & Password info</a>

g) tips & tricks

    -  You can save what you see on your browser as an app (instead of re-entering the IP/Hostname each time)
    -  Visit this link for more info: 
    
# Clean Build from Scratch (For Developers) 

This section is still far from completion as the SD card image has to be reverse-engineered to explain how WaveOS is created. 
When we're not working forward, we are working backwards on this due to its importance. 
In summary we've explained in the steps below. 
If you are interested in contributing to development of the WaveOS we welcome you (drop us an email: ccu@scottishbay.info)

# Step 1

Place DietPi version 6 and above on your device - http://dietpi.com

    - This is the one used for WaveOS version 0.1.4 - http://dietpi.com/downloads/images/DietPi_RPi-ARMv6-Stretch.7z 
    - Now for SSH & internet access.
    - Cable connect it to the internet, hook a screen up so you can see what you're doing. 
    - login using the default user profile: dietpi : dietpi
    - set the ip to 10.0.0.11 (gateway 10.0.0.1) in dietpi-config > Network Settings
    - Now I'd forget the screen (poweroff & remove), then remote into it headlessly using SSH (putty)
    
# Step 2

Install the following using the dietpi-software command: 

   - emby, emoncms, pro-ftp, samba, motioneye (and some other apps... details to follow) 
   - you'll also need avahi-daemon, git, raspap, (and some other packages... details to follow) 

# Step 3

Install OpenHAB: https://www.openhab.org

# Step 4

Customise the whole thing to give it the WaveOS look & feel (using our shazam script)

# Step 5

Schedule a cronjob to run a git-pull to get the latest WaveOS updates 
  
....more details to come, thanks for your patience in the interim

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
- HotSpot: a simply settings page to change the default hostname & SSID (wave) and your wifi password etc
- Wave-it: Wave-it is the actual opt-in scheme for free internet. You simply enter your account number with your ISP and toggle on/off the free internet service. Providing all goes well, you will stop receiving bills from your ISP once you activate this app

# WAVE-IT: How it works

So the Wave-it App automatically detects who your Internet Service Provider is. This isn't difficult. Where we can save you time and effort we will. And we can determine your public ISP easily, providing your not using a VPN already. So all we really need from you is you to input your customer account number which your ISP give you. This allows the Wave Operating System to begin paying your internet provider on your behalf using crypto currency smart contracts and the technology driving a popular service called BitRefill. Bitrefill came up with this awesome solution which allows you to pay for your data using virtual currency. So we've included their findings in the mix. But this is only half the story. The question remains, where does the funds come from to pay your internet bill if you're not paying it. And the answer is suprising. 

The funds which pay your internet bill, so that you can enjoy free internet access, are generated from the Wave Operating System. So the more you use these applications and technology, the more funds are generated and sent to your ISP. It's possible, like with solar energy 'sell-back' schemes, that you can end up sending more back to the provider than you consume, in which case they effectively owe you. But some months it's the other way around and so the annual average is what is now important, not the monthly balances. 

Hope I haven't lost you so far. If so keep reading. As you use the apps there are a number of monetisation technologies in play. Advertising and virtual currency mining are the two most obvious. With advertising, you will see ads before each movie is played in your movie library, which gives it a youtube feel. With display ads, you will notice that the websites you visit still have ads, but our Operating System actually removes the origional ads (which hord all the adrevenue for themselves) and replaces those adunits with our ads, and our advertisers revenue, which does benefit you since it goes towards paying your internet bill. So advertising is nothing new, but the way we do it is perhaps something cutting edge. The benefit to advertisers over advertiing platforms like Google or Facebook is even greater, since we are closer to the end user than Google or Facebook can ever get. Our users might not be using Google chrome, Googe Search Engine or visiting Google's Content-Network Affiliated Websites, so our ads will show where theirs cannot. And even where Google ads are being displayed, our technology removes them and serves our ads in their place. 

Revenue Channel 2: There's been a lot of hype about this recently - a new method of generating revenue from audiences, which is nothing to do with advertising. It's actually to do with virtual currency mining. For those who don't know virtual currency mining is when you use your computers processing power to calculate equasions for someone else in exchange for cash or virtual currency itself. In the case of virtual currency, your phone or computer is able to process bank transactions and when you opt-in for this, you get the transaction fee. The WaveOS uses a range of technologies to make use of the reduntant processing power in the devices connected to its hotspot. This is an opt-in scheme for the custodian of the Wi-Fi, so it's up to the owner to inform the user of this. We are however, figuring out ways within the Wave-It App to notify those connecting to the hotspot, that this sort of technology is in operation. It does carry some minor risks which are being explored now. These risks include reduction of the shelf-life of the hardware, but since modern hardware has built in safeguards to prevent any hotspot you connect to (or website you visit) from cooking your device, it's presumed this isn't a major issue at this moment. Especially in light of the fact, that this is the first viable solution to making internet access free. 

So there you have it, the whole process explained. It will only get safer, easy to understand, more transparent and with more accountability as we proceed forward on this journey.



 
