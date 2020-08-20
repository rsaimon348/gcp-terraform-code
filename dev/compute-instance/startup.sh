#!/bin/bash
apt-get update -y
apt-get install apache2 -y
apt-get install mysql-server -y
#apt install php libapache2-mod-php -y
echo "I am from $(hostname)" > /var/www/html/index.html
mysql -u root -h 10.33.0.3 -p"[MYSQL_ROOT_PASSWORD]" -e 'show processlist' >> /var/www/html/index.html
systemctl restart apache2
