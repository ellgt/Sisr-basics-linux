#!/bin/bash
clear
menu()
{
echo ""
echo "           \\\||||||////"
echo "            \\  ~ ~  //"
echo "             (  @ @  )"
echo "    ______ oOOo-(_)-oOOo___________"
echo "       Choose the one you want !"
echo "    ..............................."
echo "    1) LAMP"
echo "    ..............................."
echo "    2) LEMP"
echo "    ..............................."
echo "    3) Create db, user and password"
echo "    *******************************"
echo "    4) Worpress"
echo "    *******************************"
echo "    5) GLPI"
echo "    _____________Oooo._____________"
echo "       .oooO     (   )"
echo "        (   )     ) /"
echo "         \ (     (_/"
echo "          \_)"
echo ""
echo ""
}

menu
echo ""
echo "Enter your choice :"
read choice
echo ""
echo ""
	case $choice in
			1)
				clear
				sudo apt update
				sudo apt-get -y install mysql-server mysql-client curl bind9 ghostscript apache2 php libapache2-mod-php php-bz2 php-xmlrpc openssl php-curl php-gd php-ldap php-intl php-json php-mysql apcupsd php-apcu php-mbstring php-xml php-zip php-imagick php-imap php-apcu php-cli php-bcmath php-fpm php-cgi open-vm-tools open-vm-tools-desktop
				clear
				;;
			2)
				clear				
				sudo apt-get -y install mysql-server mysql-client bind9 nginx php sudo apt-get -y install curl bind9 ghostscript apache2 php libapache2-mod-php openssl php-curl php-gd php-bz2 php-xmlrpc php-ldap apcupsd php-apcu php-intl php-json php-mysql php-mbstring php-xml php-zip php-imagick php-imap php-apcu php-cli php-bcmath php-fpm php-cgi open-vm-tools open-vm-tools-desktop
				sudo ufw allow 'Nginx HTTP'
				clear
				;;
			3)
				clear
				sudo apt-get -y install mysql-server mysql-client
				sudo chmod +x sqlcreate.sh
				sudo ./sqlcreate.sh sisr usersisr pwsisr
				;;
			4)
				clear
				sudo apt update
				sudo apt-get -y install curl bind9 mysql-server mysql-client ghostscript apache2 php libapache2-mod-php php-bz2 php-xmlrpc openssl php-curl php-gd php-ldap php-intl php-json php-mysql apcupsd php-apcu php-mbstring php-xml php-zip php-imagick php-imap php-apcu php-cli php-bcmath php-fpm php-cgi open-vm-tools open-vm-tools-desktop
				clear
				sudo chmod +x script.sh
				sudo ./script.sh
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
				sudo a2enmod proxy_fcgi setenvif
				sudo a2enconf php7.4-fpm
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
				echo "    http://localhost"
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
				;; 
                       5)
                                clear 
				sudo apt update
				sudo apt-get -y install curl mysql-server mysql-client bind9 ghostscript apache2 php libapache2-mod-php php-bz2 php-xmlrpc openssl php-curl php-gd php-ldap php-intl php-json php-mysql apcupsd php-apcu php-mbstring php-xml php-zip php-imagick php-imap php-apcu php-cli php-bcmath php-fpm php-cgi open-vm-tools open-vm-tools-desktop
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
				cd
				sudo chown -R www-data /opt/glpi/
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
                                ;;
	esac
exit
