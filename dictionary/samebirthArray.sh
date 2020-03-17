#!/bin/bash -x

counter=0;

while [[ $counter -ne 50 ]]
do
	month=$((RANDOM%12))
	birthArray[$month]=$((${birthArray[$month]}+1));
	((counter++))
done

echo "${birthArray[@]}"


for var in ${!birthArray[@]}
do
	echo "$(($var+1)) : ${birthArray[$var]}"
done
