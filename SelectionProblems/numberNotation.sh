#!/bin/bash -x

read -p "Enter number : " number

if [ $number -lt '10' ];
then
	echo "Unit Number"
elif [ $number -lt '100' ];
then
 	echo "Tens Number"
elif [ $number -lt '1000' ];
then
	echo "Hundreds"
elif [ $number -lt '10000' ];
then
	echo "Thousands"
fi
