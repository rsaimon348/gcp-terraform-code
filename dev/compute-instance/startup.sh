#!/bin/bash
apt-get update -y
apt-get install apache2 -y
apt-get install mysql-server -y
#apt install php libapache2-mod-php -y
echo "I am from $(hostname)" > /var/www/html/index.html
mysql -u root -h 10.249.0.3 -p"<mysql_password_to_provide>" -e 'show processlist' >> /var/www/html/index.html
systemctl restart apache2
