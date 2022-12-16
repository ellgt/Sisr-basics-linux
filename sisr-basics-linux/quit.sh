#!/bin/bash
clear
menu()
{
echo "           \\\||||||////"
echo "            \\  ~ ~  //"
echo "             (  @ @  )"
echo "    ______ oOOo-(_)-oOOo___________"
echo "       Remove the install files ?"
echo "    ..............................."
echo "    1) Yes"
echo "    ..............................."
echo "    2) No"
echo "    ..............................."
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
				echo "Remove in process"
				cd ..
				sudo rm -r sisr-basics-linux/
				echo "Thank's for have use sisr-basics-linux ! :)"
				;;
			2)
				clear
				echo "Thank's for have use sisr-basics-linux ! :)"
				;;
	esac
exit
