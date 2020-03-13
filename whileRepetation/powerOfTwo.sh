#!/bin/bash -x

read -p "Enter number " number

power=`echo "2^$number" | bc`;
i=1;
result=0;
while [[ $i -le $power ]]
do
	if [ $result -ne $power ]
	then
		result=$((2*$i));
		((i++));
	else
		((i++));
	fi
done
