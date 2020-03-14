#!/bin/bash -x

echo "Menu :"
echo " 1. Feet to Inch "
echo " 2. Inch to Feet "
echo " 3. Feet to Metre "
echo " 4. Metre to Feet "

echo "enter your choice : "
read choice;

case $choice in
	1)
		read -p "Enter feets : " feet
		inch=`echo " scale=2; $feet/12" | bc -l`;
		;;
	2)
		read -p "Enter Inches : " inch
		feet=`echo " scale=2; $inch*12" | bc -l`;
		;;
	3)
		read -p "Enter feets : " feet
		metres=`echo " scale=2; $feet*0.304" | bc -l`;
		;;
	4)
		read -p "Enter metres : " metre
		feet=`echo " scale=2; $metre/0.304" | bc -l`;
		;;
	*)
		echo "Wrong Input !"
		;;
esac
	


