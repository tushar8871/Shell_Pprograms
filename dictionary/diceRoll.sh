#!/bin/bash -x

counter=0;
#array=( [0]=0 [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 )

while [[ ${array[$number]} -ne 10 ]]
do
	number=$((RANDOM%6));
	array[$number]=`echo "$((${array[$number]}+1))" | bc`;
	max=$number;
done

min=0;
for (( val=0;val<6; val++ ))
do
	if [ ${array[$min]} -gt ${array[$val]} ]
	then
		min=$val
	fi
done

echo "${array[@]}"
echo "Maximum times come : $(($max+1))"
echo "Minimum times come : $(($min+1))"
