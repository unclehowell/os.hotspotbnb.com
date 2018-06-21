# for now we'll just grab the latest copy of the interactive demo and change the icon links to point to the apps,  rather than sample pages simulating apps

cd /var/www/html
wget https://github.com/unclehowell/makeitwave.com/archive/master.zip
unzip master.zip
cd

mv /var/www/html/makeitwave.com-master/docs/demo.html /var/www/html
mkdir /var/www/html/dashboard-demo
mv /var/www/html/makeitwave.com-master/docs/dashboard-demo/* /var/www/html/dashboard-demo
mv /var/www/html/demo.html /var/www/html/index.html

# more to do, including fix missing bits, rename links to go to apps, not demo pages etc - but this'll do for now pigs

