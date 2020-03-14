#!/bin/bash -x

function sort(){
	for (( var=0; $var<10;var++ ))
	do
		for (( val=0; $val<10;val++ ))
		do
			if [ ${randomArray[$var]} -ge ${randomArray[$val]} ]
			then
				temp=${randomArray[$var]};
				randomArray[$var]=${randomArray[$val]};
				randomArray[$val]=$temp;
			fi
		done
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

sort ${randomArray[@]}

echo "Sorted Array ${randomArray[@]}"
echo "Second largest element : ${randomArray[1]}"
echo "Second smallest element : ${randomArray[(($counter-2))]}"
