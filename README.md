# Background

Developing a low-cost solution to make your internet access free for you, hasn't been easy. There are literally thousands of hurdles which our team have been working to overcome since around 2012. The result of our years of work is a small micro-computer (called a Raspberry Pi), which you simply hook into your Wi-Fi router using a standard networking cable. And that's basically it, free internet access thereafter. Still a bit clunky with some bugs, but we couldn't wait anylonger to launch this worldwide for everyone to get their hands on. 

This GitHub Repository contains all the code required for the Raspberry Pi to function. Getting free internet is now as easy as downloading our Operating System, loading it to a standard SD Card and inserting it into the Raspberry Pi you intend to connect to your Home or Office Internet Router. 

There are two options below to help you get started on this journey. You can download a pre-configured SD Card Disc Image, or if you're a little more tech savvy and want to understand exactly how this all works, you can manually build your SD Card, like our team do, by going through our step-by-step manual configuration guide. 

If you scroll to the bottom of this document you can also read a more comprehesive description of how our Google Patented free internet technology solution makes it possible for anyone in the world to have free internet access without breaching any of todays high privacy & security standards. We also sell the complete solution, boxed and ready to connect for $500 USD (email ccu@scottishbay.info to place your order)


# Plug & Play Installation Guide

a) Download the WaveOS pre-configured SD Card image from this link: ###########
* (The latest Wave Operating System (for the Raspberry Pi 3 - Armhf) is in the process of being compiled and compressed for a one-click download and installation and is scheduled to be published here before March 2018)

b) use Etcher or Win32 to burn to a 32GB Micro SD Card. 

c) Insert the SD Card into the Raspberry Pi and power it up.

d) Connect to the Wi-Fi Hotspot using the default password (makeitwave)

e) Once connected enter the hostname 'wave/' into your web browser

Manually Configuration: 

# Manual Configuration Guide: Step 1
a) Download DietPi - http://dietpi.com/downloads/images/DietPi_RPi-ARMv6-Stretch.7z

b) Extract the Disc Image File

c) Burn the Disc Image to a 32GB Micro SD Card (using a program like Win32 - https://sourceforge.net/projects/win32diskimager/)

d) Place in a Raspberry Pi 3 (Armhf) and boot up the Raspberry Pi

# Step 2

a) SSH into the hotspot using the default ip (cmd command: arp -a should find it)

d) Enter the default username and password (dietpi:dietpi)

c) Enter admin mode with the command (sudo su)

d) Install the OpenHab-Configuration Menu:
  - sudo apt-get update
  - sudo apt-get install git
  - sudo git clone https://github.com/openhab/openhabian.git /opt/openhabian
  - sudo ln -s /opt/openhabian/openhabian-setup.sh /usr/local/bin/openhabian-config
  - sudo openhabian-config
  
....more coming, thanks for your patience

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




 
