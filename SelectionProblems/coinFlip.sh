#!/bin/bash -x

val=$((RANDOM%2));

if [ $val -eq 0 ]
then
	echo "Head"
else
	echo "Tails"
fi
