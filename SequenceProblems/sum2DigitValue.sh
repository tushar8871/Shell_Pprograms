#!/bin/bash -x

count=0
while [ $count != 6 ]
do
	random=$((RANDOM%100))
	if [ $random -lt 100 ] && [ $random -gt 10 ]
	then
		sum=$(( $sum +$random ));
		((count++))
	fi
done
avg=$(($sum/5));
	
