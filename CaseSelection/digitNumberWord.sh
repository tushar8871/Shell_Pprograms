#!/bin/bash -x

read -p "Enter single digit i.e 0-9 " singleDigit

case $singleDigit in
	0)
		echo "zero"
		;;
	1)
		echo "one"
		;;
	2)
		echo "two"
		;;
	3)
		echo "three"
		;;
	4)
		echo "four"
		;;
	5)
		echo "five"
		;;
	6)
		echo "six"
		;;
	7)
		echo "seven"
		;;
	8)
		echo "eight"
		;;
	9)
		echo "nine"
		;;
	*)
		echo "Wrong input !"
		;;
esac

