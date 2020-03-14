#!/bin/bash -x

read -p "Enter wallet amount : " walletAmount
read -p "Enter goal amount : " GOAL

counter=0;
i=0;

while true
do
	bet=$((RANDOM%2));
	if [ $bet -eq 0 ]
	then
		walletAmount=$(($walletAmount-1));
		((i++));
	else
		walletAmount=$(($walletAmount+$bet));
		((counter++));
		((i++));
	fi

	if [ $walletAmount -le 0 ]
	then
		echo "Gambler has lost ! "
		break;
	elif [ $GOAL -lt $walletAmount ]
	then
		echo "Gambler has won ! $counter times wins And amount is  $walletAmount"
		break;
	fi
done
