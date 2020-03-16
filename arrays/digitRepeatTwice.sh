#!/bin/bash -x

function isPalindrome(){
	local temp=$1;
	local sum=0;
	while [ $temp -ne 0 ]
	do
		local remainder=$(($temp%10));
		sum=$(($sum*10+$remainder));
		temp=$(($temp/10));
	done

	if [ $1 -eq $sum ]
	then
		echo $1
	fi
}

counter=0;
for (( val=10; val<=100;val++ ))
do
	array[((counter++))]=$( isPalindrome $val )
done

${array[@]}
