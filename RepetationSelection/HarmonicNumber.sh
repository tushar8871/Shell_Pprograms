#!/bin/bash -x

read -p "Enter number upto which harmonic number to be displayed : " number

result=0;
for (( num=1; $num<$number ; num++ ))
do
	result=`echo "sale=2; ($result+(1/$num))" | bc -l `;
done

echo $result
