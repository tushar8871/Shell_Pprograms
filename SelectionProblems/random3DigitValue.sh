#!/bin/bash -x

firstNumber=$((RANDOM%1000));
secondNumber=$((RANDOM%1000));
thirdNumber=$((RANDOM%1000));
fourthNumber=$((RANDOM%1000));
fifthNumber=$((RANDOM%1000));
TEMP=100

if [ $firstNumber -gt $TEMP ] && [ $secondNumber -gt $TEMP ] && [ $thirdNumber -gt $TEMP ] && [ $fourthNumber -gt $TEMP ] && [ $fifthNumber -gt $TEMP ]
then
	if [ $firstNumber -lt $secondNumber ] && [ $firstNumber -lt $thirdNumber ] && [ $firstNumber -lt $fourthNumber ] && [ $firstNumber -lt $fifthNumber ]
	then
		echo "Minimum Value is : "$firstNumber
	elif [ $secondNumber -lt $firstNumber ] && [ $secondNumber -lt $thirdNumber ] && [ $secondNumber -lt $fourthNumber ] && [ $secondNumber -lt $fifthNumber ]
   	then
      	echo "Minimum Value is : "$secondNumber
	elif [ $thirdNumber -lt $secondNumber ] && [ $thirdNumber -lt $firstNumber ] && [ $thirdNumber -lt $fourthNumber ] && [ $thirdNumber -lt $fifthNumber ]
   	then
      	echo "Minimum Value is : "$thirdNumber
	elif [ $fourthNumber -lt $secondNumber ] && [ $fourthNumber -lt $thirdNumber ] && [ $fourthNumber -lt $firstNumber ] && [ $fourthNumber -lt $fifthNumber ]
   	then
      	echo "Minimum Value is : "$fourthNumber
	else
		echo "Minimum Value is : "$fifthNumber
	fi



	if [ $firstNumber -gt $secondNumber ] && [ $firstNumber -gt $thirdNumber ] && [ $firstNumber -gt $fourthNumber ] && [ $firstNumber -gt $fifthNumber ]
   	then
      	echo "Maximum Value is : "$firstNumber
	elif [ $secondNumber -gt $firstNumber ] && [ $secondNumber -gt $thirdNumber ] && [ $secondNumber -gt $fourthNumber ] && [ $secondNumber -gt $fifthNumber ]
   	then
      	echo "Maximum Value is : "$secondNumber
	elif [ $thirdNumber -gt $secondNumber ] && [ $thirdNumber -gt $firstNumber ] &&	[ $thirdNumber -gt $fourthNumber ] && [ $thirdNumber -gt $fifthNumber ]
   	then
      	echo "Maximum Value is : "$thirdNumber
	elif [ $fourthNumber -gt $secondNumber ] && [ $fourthNumber -gt $thirdNumber ] && [ $fourthNumber -gt $firstNumber ] && [ $fourthNumber -gt $fifthNumber ]
   	then
      	echo "Maximum Value is : "$fourthNumber
	else
   	echo "Maximum Value is : "$fifthNumber
	fi
else
	echo "Not between two digit ! "
fi
