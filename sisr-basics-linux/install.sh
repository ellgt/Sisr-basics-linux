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
				cd lamp/
				sudo chmod +x script.sh
				sudo ./script.sh
				;;
			2)
				clear
				cd lemp/				
				sudo chmod +x script.sh
				sudo ./script.sh
				;;
			3)
				clear
				cd sql/
				sudo chmod +x sqlcreate.sh
				sudo ./sqlcreate.sh sisr usersisr pwsisr
				;;
			4)
				clear
				cd wordpress/
				sudo chmod +x script.sh
				sudo ./script.sh
				;; 
                       5)
                                clear 
                                cd glpi/
                                sudo chmod +x script.sh
                                sudo ./script.sh
                                ;;
	esac
exit
