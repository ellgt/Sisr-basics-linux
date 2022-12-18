#!/bin/bash
sudo apt update
sudo apt-get -y install mysql-server mysql-client
sudo apt-get -y install curl bind9 ghostscript apache2 php libapache2-mod-php openssl php-curl php-gd php-ldap php-intl php-json php-mysql php-mbstring php-xml php-zip php-imagick php-imap php-apcu php-cli php-bcmath php-fpm php-cgi open-vm-tools open-vm-tools-desktop

clear
cd ..
cd sql 
sudo chmod +x sqlcreate.sh
sudo ./sqlcreate.sh glpi glpi glpi
clear

cd
cd /tmp
wget https://github.com/glpi-project/glpi/releases/download/9.5.7/glpi-9.5.7.tgz
cd /opt/
sudo tar -xvzf /tmp/glpi-9.5.7.tgz
sudo touch /etc/apache2/conf-available/glpi.conf
echo "Alias /glpi /opt/glpi" >> /etc/apache2/conf-available/glpi.conf
echo "<Directory /opt/glpi>" >> /etc/apache2/conf-available/glpi.conf
echo "  DirectoryIndex index.php" >> /etc/apache2/conf-available/glpi.conf
echo "  Options FollowSymLinks" >> /etc/apache2/conf-available/glpi.conf
echo "  AllowOverride Limit Options FileInfo" >> /etc/apache2/conf-available/glpi.conf
echo "  Require all granted" >> /etc/apache2/conf-available/glpi.conf
echo "</Directory>" >> /etc/apache2/conf-available/glpi.conf

sudo a2enconf glpi.conf
sudo systemctl restart apache2
clear

echo ""
echo "           \\\||||||////"
echo "            \\  ~ ~  //"
echo "             (  @ @  )"
echo "    ______ oOOo-(_)-oOOo___________"
echo "    Install finish"
echo "    *******************************"
echo "    db=glpi user=glpi password=glpi"
echo "    *******************************"
echo "    Click on :"
echo "    http://localhost/glpi"
echo "    To access to your glpi"
echo "    *******************************"
echo "    Thank's for have use sisr-basics"
echo "    _____________Oooo._____________"
echo "       .oooO     (   )"
echo "        (   )     ) /"
echo "         \ (     (_/"
echo "          \_)"
echo ""
echo ""
