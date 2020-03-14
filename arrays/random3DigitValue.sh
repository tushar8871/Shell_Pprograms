#!/bin/bash -x

function max(){
	local secondLargest=0;
	local largest=$1;
	for (( val=1;$val<$counter; val++ ))
	do
		if [[ ${randomArray[$val]} -gt $largest ]]
		then
			secondLargest=$largest;
			largest=${randomArray[$val]};
		elif [[ ${randomArray[$val]} -gt $secondLargest ]]
		then
			secondLargest=${randomArray[$val]};
		fi
	done
}

function min(){
	local secondSmallest=0;
	local smallest=$1;
	for (( val=1;$val<$counter; val++ ))
	do
		if [ ${randomArray[$val]} -lt $smallest ]
		then
			secondSmallest=$smallest;
			smallest=${randomArray[$val]};
		elif [ ${randomArray[$val]} -lt $secondSmallest ]
		then
			secondSmallest=${randomArray[$val]};
		fi
	done
}


counter=0;
while [ $counter -ne 10 ]
do
	random=$((RANDOM%1000));
	if [ $random -ge 100 ] 
	then
		randomArray[$counter]=$random;
		((counter++));
	fi
done

echo ${randomArray[0]}
max ${randomArray[@]}
min ${randomArray[@]}

