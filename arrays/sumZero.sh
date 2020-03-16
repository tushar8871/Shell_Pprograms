#!/bin/bash -x

function sum(){
	counter=0;
	for (( i=0;i<$size;i++ ))
	do	
		for (( j=$i+1;j<$size;j++ ))
		do
			for (( k=$j+1; k<$size;k++ ))
			do
				if [ $((${array[$i]}+${array[$j]}+${array[$k]})) -eq 0 ]
				then
					resultArray[((counter++))]=${array[$i]};
					resultArray[((counter++))]=${array[$j]};
					resultArray[((counter++))]=${array[$k]};
				fi
			done
		done
	done
}

read -p "Enter array size : " size
for (( val=0; val<$size ; val++ ))
do
	read -p "Enter element " element
	array[$val]=$element
done
sum "${array[@]}"
echo "${resultArray[@]}"
