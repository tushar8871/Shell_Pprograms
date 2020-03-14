#!/bin/bash -x

read -p "Enter week day from 0-6" day

case $day in
	0)
		echo "Sunday"
		;;
	1)
		echo "Monday"
		;;
	2)
		echo "Tuesday"
		;;
	3)
		echo "Wednesday"
		;;
	4)
		echo "Thursday"
		;;
	5)
		echo "Friday"
		;;
	6)
		echo "Saturday"
		;;
	*)
		echo "Wrong Input"
		;;
esac
