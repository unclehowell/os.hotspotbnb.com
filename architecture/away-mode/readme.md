Away-Mode

A script for the SD Card Image which runs on initial boot-up/ ping (internet connection), to give the user instant remote access to the User Interface. Since the users locally hosted apps now includes their media, cameras, Home Control, Energy monitoring and so forth, 
this feature is a must have for all modern homes. But it needs to work out of the box, with no set-up required. 

Remote access currently works using Weaved (now called Remote3.it).
But it requires each SD Card/unit to create an account and go into the source code using SSH to configure. 
This is not consumer friendly and makes scaling the network a nightmare. This must all work out of the box.

In the case of WaveOS there is a requirement for two secure channels of access. 
- 1. The web interface must be accessible to the users with a friendly domain/ddns name and username/ password. 
The idea is for these credentials to be visible on the locally hosted menu (secured by a login) and all generated (automatically) by the devices unique ID. 
- 2. The SSH channel, so that our team can remotely access the device to provide support when neccessary. 

Currently remote3.it has made two advances in this direction, but no out-of-the-box solution exists, so it will be developed here. 
The first thing we see in the remote3 github repo is a method for bypassing the website ui altogether. Tried this and it works. 
The second solution, I can't remember right now, but the point is, these are ingredients to move forward to the kind of solution required for WaveOS. 

I spoke to the remote3.it team this week and I can understand why it would make sense for each user to have their own remote3.it account. I support this, in much the same way the Emby app lets users bypass our team and remunerate the Emby team for their awesome app. But as it stands it's all a little too cumbersome for a regular user to create remote access the remote3.it way. With this feature we should resolve that problem. 

How this script currently works (the one which lets us bypass the website all together).
If this can be made accessible via SSH then the API could easily be used for a locally hosted service for users. 

A final note before we get stuck in. The WaveOS team will require remote access to support the operating system. 
Although we can make the units update automatically, the method we employ to achieve this may change, which may require remote SSH access to impliment. We could give the user the ability to opt-in or out of granting/ denying our support team remote SSH access, but this would not be a feature in these early version released. Food for thought. 

Back to the work, here's the remote3.it code today, which is a good basis for the away-mode feature to be built upon. 

------------------------------------------------------------------------------------------------------

The script starts by logging into the remot3.it server to obtain a login token.  All API calls are documented here:

https://remot3it.readme.io/v23.5/reference

The user token is sent to the Service List API call in order to retrieve the full device list associated with this account.

From there we parse the JSON output of the device list and find the entry corresponding to the device name you gave.  We find the UID (JSON ["deviceaddress"]) for this entry and use this in conjunction with the remot3.it daemon (connectd) in client mode to initiate a peer to peer connection.

/usr/bin/connectd -c <base64 of username> <base64 of password> <UID> T<portnum> <Encryption mode> <localhost address> <maxoutstanding>

-c = client mode
<base64 of username> = remot3.it user name, base64 encoded
<base64 of password> = remot3.it password, base64 encoded
<UID> = remot3.it UID for this device connections
<portnum> = port to use on localhost address
<Encryption mode> = 1 or 2
<localhost address> = 127.0.0.1
<maxoutstanding> = 12

Example:
/usr/bin/connectd -c ZmF1bHReaX5lMTk9OUB5YWhvby5jb20= d5VhdmVkFjAxWg== 80:00:00:0F:96:00:01:D3 T33000 1 127.0.0.1 12

Now you have a listener at 127.0.0.1:33000 that is a connection through remot3.it to your remote device's SSH service.

The command line ssh client is launched and you are greeted with a request for your SSH password.  Until the port assignment values are cached, you may see SSH security warnings.
