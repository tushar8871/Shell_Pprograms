#!/bin/bash -x

counter=1;
counter1=1;

while [[ $counter -le 11  || $counter1 -le 11 ]]
do
	val=$((RANDOM%2));
	
	if [ $val -eq 0 ]
	then
		if [ $counter -eq 11 ]
		then
			break;
		fi
		((counter++))
	else
		if [ $counter1 -eq 11 ]
		then
			break;
		fi
		((counter1++))
	fi
done

if [ $counter1 -eq 11 ]
then
	echo "Head wins 11 times"
else
	echo "Tails wins 11 times"
fi
