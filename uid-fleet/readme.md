How this script works

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
