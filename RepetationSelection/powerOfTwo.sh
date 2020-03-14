#!/bin/bash -x

read -p "Enter exponent : " exponent

result=0;
power=`echo "2^$exponent" | bc`;  
for (( num=1; num <=$power ; num++ ))
do
	if [ $result -ne $power ]
	then
		result=$((2*$num));
	else
		echo $result
		break;
	fi
done
