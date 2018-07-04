  #!/usr/bin/env bash
  
  
sed -i 's/Serial          : / /g' /var/www/html/uid.txt > /var/www/html/uid2.txt
mv /var/www/html/uid2.txt > /var/www/html/uid.txt
