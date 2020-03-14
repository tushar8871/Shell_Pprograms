#!/bin/bash -x

read -p "Enter number : " number

result=1;
for (( num=1; $num<=number ;num++))
do
	result=$(($result*$num));
done
