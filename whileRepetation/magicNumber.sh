#!/bin/bash -x

echo "Think number between 1 to 100"

low=0;
high=100;
temp=0;

while true
do
	mid=$((($low+$high)/2));
	read -p  "Is Number less than (($low+$high)/2) than press 1 and if mid is equal to your number than press 2 otherwise 0 " a
	if [ $low -lt $high ] && [ $a -eq 1 ]
	then
		high=$((($low+$high)/2));
	elif [ $a -eq 2 ]
	then
		low=$mid;
		high=$mid;
	else
		low=$((($low+$high)/2));
	fi
	
	if [ $low -eq $high ]
	then
		echo "Found number which is : "$low
		break;
	fi
done
