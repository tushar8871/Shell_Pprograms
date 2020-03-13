#!/bin/bash -x

read -p "Enter year : " year

validate=$(($year%4))
if [ $validate == 0 ] && [ $year%100 != 0 ] && [ $year%400 == 0 ]
then 
	echo "Leap Year ! " $year
else
	echo "Not Leap Year !"
fi
