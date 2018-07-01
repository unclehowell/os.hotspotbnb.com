# generate UID text file and clean it up a bit
cat /proc/cpuinfo | grep Serial > /var/www/html/uid.txt
cd /var/www/html
sed -i 's/Serial//g' uid.txt
sed -i 's/://g' uid.txt
sed -i 's/[[:space:]]//g' uid.txt
cd
