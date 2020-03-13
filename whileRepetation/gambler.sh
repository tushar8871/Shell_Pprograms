#!/bin/bash -x

read -p "Enter wallet amount : " walletAmount
read -p "Enter goal amount : " GOAL
read -p "Enter number of times you want to play : " numberTimes

counter=0;
i=0;
tempWallet=$walletAmount;

while [[ $i -lt $numberTimes ]]
do
	bet=$((RANDOM%2));
	if [ $bet -eq 0 ]
	then
		walletAmount=$(($walletAmount-($tempWallet/2)));
		((i++));
	else
		walletAmount=$(($walletAmount+($walletAmount/2)));
		((counter++));
		((i++));
	fi
done

if [ $walletAmount<=0 ]
then
	echo "Gambler has lost ! "
elif [ $GOAL -lt $walletAmount ]
then
	echo "Gambler has won ! $counter times wins And amount is  $walletAmount"
else
	echo "Gambler has won $counter times wins but not reach goal ! "
fi
