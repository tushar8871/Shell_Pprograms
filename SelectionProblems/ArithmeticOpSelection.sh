#!/bin/bash -x

read -p "Enter value 1 : " val1
read -p "Enter value 2 : " val2
read -p "Enter value 3 : " val3

echo "Expressions are : "

result1=$(($val1+$val2*$val3));
result2=$(($val3+$val1/$val2));
result3=$(($val1%$val2+$val3));
result4=$(($val1*$val2+$val3));

max=0
if [ $result1 -gt $result2 ] && [ $result1 -gt $result3 ] && [ $result1 -gt $result4 ] 
then
	max=$result1
elif [ $result2 -gt $result3 ] && [ $result2 -gt $result4 ]
then 
	max=$result2
elif [ $result3 -gt $result4 ] 
then
	max=$result3
else
	max=$result4
fi

min=0
if [ $result1 -lt $result2 ] && [ $result1 -lt $result3 ] && [ $result1 -lt $result4 ] 
then
   min=$result1
elif [ $result2 -lt $result3 ] && [ $result2 -lt $result4 ]
then 
   min=$result2
elif [ $result3 -lt $result4 ] 
then
   min=$result3
else
   min=$result4
fi
