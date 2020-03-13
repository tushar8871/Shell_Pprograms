#!/bin/bash -x

read -p "Enter value 1 : " val1
read -p "Enter value 2 : " val2
read -p "Enter value 3 : " val3

echo "Expressions are : "
echo "1. ($val1+$val2*$val3) is : "
result=$(($val1+$val2*$val3));

echo "2. ($val3+$val1/$val2) is : "
result=`echo "scale=2; $val3+$val1/$val2" | bc -l`;

echo "3. ($val1%$val2+$val3) is : "
result=$(($val1%$val2+$val3));

echo "4. ($val1*$val2+$val3) is : "
result=$(($val1*$val2+$val3));
