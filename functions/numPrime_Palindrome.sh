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
		if [ $primeNumber -eq $( isPrime $palindrome ) ]
		then
   		echo "Yes the $number is Prime and its palindrome is also prime"
		else
   		echo "Palindrome of number is not prime"
		fi
	else
		echo "$1 is not Palindrome"
		break
	fi
}

function isPrime(){
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
	echo "$number"
else
	echo "$number is not prime"
fi
}


read -p "Enter number " number

primeNumber=$( isPrime $number )
palindrome=$( isPalindrome $primeNumber )
