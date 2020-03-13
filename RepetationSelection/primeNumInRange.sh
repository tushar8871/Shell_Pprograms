#!/bin/bash -x

echo "Prime number between range"
read -p "Enter num1 " num1
read -p "Enter num2 " num2

for (( i=$num1; $i<$num2; i++ ))
do
	count=0;
	for (( j=1; $j<=$i; j++ ))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			((count++));
		fi
	done
	
	if [ $count -eq 2 ]
	then
		echo $i
	fi
done
