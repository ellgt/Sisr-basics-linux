#!/bin/bash
sudo apt update
sudo apt-get -y install mysql-server mysql-client

sudo apt-get -y install bind9 nginx php openssl php-curl php-gd php-php-gettext php-ldap php-intl php-json php-mysql php-mbstring php-xml php-zip php-imagick php-imap php-apcu php-cli php-fpm php-cgi
sudo ufw allow 'Nginx HTTP'
clear
menu()
{
echo "*************************************************************"
echo "* the install is complete !                                 *"
echo "*                                                           *"
echo "* Do you want to quit or get back to the menu ?             *"
echo "*                                                           *"
echo "*          1)Quit                           2)Menu          *"
echo "*************************************************************"
}
echo ""
menu
echo " Enter your choice :"
echo ""
echo ""
read choice

	case $choice in
		1)
			cd ..
			sudo chmod +x quit.sh
			sudo ./quit.sh
			;;
		2)
			cd ..
			sudo ./install.sh
			;;
	esac
exit


