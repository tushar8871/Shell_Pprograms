#!/bin/bash -x

function prime(){
	counter=0;
	for (( i=2; $i<=$1; i++ ))
	do
		count=0;
		for (( j=1; j<=i; j++ ))
		do
			if [ $(($i%$j)) -eq 0 ] && [ $(($1%$i)) -eq 0 ]
			then
				((count++))
			fi
		done

		if [ $count -eq 2 ]
		then
			primeArray[$counter]=$i;
			((counter++));
		fi
	done 
}

read -p "Enter number to calculate prime factors : " number
prime $number
echo "${primeArray[@]}"
