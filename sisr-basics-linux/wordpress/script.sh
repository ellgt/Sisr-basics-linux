#!/bin/bash
sudo apt update
sudo apt-get -y install mysql-server mysql-client
sudo apt-get -y install curl bind9 ghostscript apache2 php libapache2-mod-php openssl php-curl php-gd php-ldap php-intl php-json php-mysql php-mbstring php-xml php-zip php-imagick php-imap php-apcu php-cli php-bcmath php-fpm php-cgi open-vm-tools open-vm-tools-desktop
clear
cd ..
cd sql 
sudo chmod +x sqlcreate.sh
sudo ./sqlcreate.sh wordpress userwp pressword
clear
cd
sudo mkdir -p /srv/www
sudo chown www-data: /srv/www
curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www
sudo touch /etc/apache2/sites-available/wordpress.conf
echo "" > /etc/apache2/sites-available/wordpress.conf
echo "" > /etc/apache2/sites-available/wordpress.conf
echo "" > /etc/apache2/sites-available/wordpress.conf
echo "<VirtualHost *:80>" >> /etc/apache2/sites-available/wordpress.conf
echo "    DocumentRoot /srv/www/wordpress" >> /etc/apache2/sites-available/wordpress.conf
echo "    <Directory /srv/www/wordpress>" >> /etc/apache2/sites-available/wordpress.conf
echo "        Options FollowSymLinks" >> /etc/apache2/sites-available/wordpress.conf
echo "        AllowOverride Limit Options FileInfo" >> /etc/apache2/sites-available/wordpress.conf
echo "        DirectoryIndex index.php" >> /etc/apache2/sites-available/wordpress.conf
echo "        Require all granted" >> /etc/apache2/sites-available/wordpress.conf
echo "    </Directory>" >> /etc/apache2/sites-available/wordpress.conf
echo "    <Directory /srv/www/wordpress/wp-content>" >> /etc/apache2/sites-available/wordpress.conf
echo "        Options FollowSymLinks" >> /etc/apache2/sites-available/wordpress.conf
echo "        Require all granted" >> /etc/apache2/sites-available/wordpress.conf
echo "    </Directory>" >> /etc/apache2/sites-available/wordpress.conf
echo "</VirtualHost>" >> /etc/apache2/sites-available/wordpress.conf
echo "" >> /etc/apache2/sites-available/wordpress.conf
echo "" >> /etc/apache2/sites-available/wordpress.conf

sudo a2ensite wordpress
sudo a2enmod rewrite
sudo a2dissite 000-default
sudo a2dissite 000-default
sudo a2enconf php7.4-fpm
sudo a2enmod proxy_fcgi setenvif
sudo systemctl restart apache2

sudo -u www-data cp /srv/www/wordpress/wp-config-sample.php /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i 's/database_name_here/wordpress/' /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i 's/username_here/userwp/' /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i 's/password_here/pressword/' /srv/www/wordpress/wp-config.php
clear
echo ""
echo "           \\\||||||////"
echo "            \\  ~ ~  //"
echo "             (  @ @  )"
echo "    ______ oOOo-(_)-oOOo___________"
echo "    Install finish"
echo "    *******************************"
echo "    db=wordpress user=userwp password=pressword"
echo "    *******************************"
echo "    Click on :"
echo "    http://localhost/wordpress"
echo "    To access to your wordpress"
echo "    *******************************"
echo "    Thank's for have use sisr-basics"
echo "    _____________Oooo._____________"
echo "       .oooO     (   )"
echo "        (   )     ) /"
echo "         \ (     (_/"
echo "          \_)"
echo ""
echo ""
