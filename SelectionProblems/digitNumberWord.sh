#!/bin/bash -x

singleDigit=$((RANDOM%10));

if [ $singleDigit -eq 0 ]
then
	echo "zero"
elif [ $singleDigit -eq 1 ]
then
	echo "one"
elif [ $singleDigit -eq 2 ]
then 
	echo "two"
elif [ $singleDigit -eq 3 ]
then 
	echo "three"
elif [ $singleDigit -eq 4 ]
then 
	echo "four"
elif [ $singleDigit -eq 5 ]
then
	echo "five"
elif [ $singleDigit -eq 6 ]
then
	echo "six"
elif [ $singleDigit -eq 7 ]
then
	echo "seven"
elif [ $singleDigit -eq 8 ]
then
	echo "eight"
else
	echo "nine"
fi
