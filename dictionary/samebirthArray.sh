#!/bin/bash -x

counter=0;

while [[ $counter -ne 50 ]]
do
	month=$((RANDOM%12))
	birthArray[$month]=$((${birthArray[$month]}+1));
	((counter++))
done

echo "${birthArray[@]}"

counter=0;
while [[ $counter -ne 12 ]]
do
	case $counter in
		0)
			echo "January : ${birthArray[$counter]}"
			;;
		1)
			echo "February : ${birthArray[$counter]}"
			;;
		2)
			echo "March : ${birthArray[$counter]}"
			;;
		3)
			echo "April : ${birthArray[$counter]}"
			;;
		4)
			echo "May : ${birthArray[$counter]}"
			;;
		5)
			echo "June : ${birthArray[$counter]}"
			;;
		6)
			echo "July : ${birthArray[$counter]}"
			;;
		7)
			echo "August : ${birthArray[$counter]}"
			;;
		8)
			echo "September : ${birthArray[$counter]}"
			;;
		9)
			echo "October : ${birthArray[$counter]}"
			;;
		10)
			echo "November : ${birthArray[$counter]}"
			;;
		11)
			echo "December : ${birthArray[$counter]}"
			;;
	esac
	((counter++))
done
