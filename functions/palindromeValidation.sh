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
	else
		echo "$1 is not Palindrome"
		break;
	fi
}

read -p "Enter number 1 : " number1
read -p "Enter number 2 : " number2

checkPalindrome=$( isPalindrome $number1 )
checkPalindrome2=$( isPalindrome $number2 )

if [ $checkPalindrome -eq $checkPalindrome2 ]
then
	echo "Both numbers are palindrome and same ! "
else
	echo "Both numbers are not same! "
fi

