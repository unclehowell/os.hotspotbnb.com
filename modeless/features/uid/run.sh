# generate UID text file and clean it up a bit
cat /proc/cpuinfo | grep Serial > /var/www/html/uid.txt
cd /var/www/html
sed -i 's/Serial//g' uid.txt
sed -i 's/://g' uid.txt
sed -i 's/[[:space:]]//g' uid.txt
sed -i 's/[[:blank:]]//g' uid.txt
sed -i 's/\<00*\([1-9]\)/\1/g' uid.txt
cd
