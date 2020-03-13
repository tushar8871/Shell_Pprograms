#!/bin/bash -x

read -p "Enter number : " number

count=0;
for (( num=1; $num<=$number ; num++ ))
do
	if [ $(($number%$num)) -eq 0 ]
	then
		((count++))
	fi
done

if [ $count -eq 2 ]
then
	echo "$number is a prime "
else
	echo "$number is not prime"
fi 
