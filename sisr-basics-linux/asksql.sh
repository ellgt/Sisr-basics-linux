#!/bin/bash


clear

menu()
{
echo ""
echo "Do you want to create a databse with user and password ?"
echo ""
echo "		1)Yes				2)No"
echo ""

menu
echo ""
echo "Enter your choose :"
read choose
echo ""
	case $choose in 
		1)
			
			cd sql
			sudo chmod +x sqlcreate.sh
			./sqlcreate.sh sisr usersisr pwsisr
			;;
		2)
			sudo chmod +x quit.sh
			sudo ./quit.sh
			;;
	esac
exit
