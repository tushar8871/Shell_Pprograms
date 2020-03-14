#!/bin/bash -x

function degFarhenite(){
	if [ $1 -ge 0 -a $1 -le 100 ]
	then
		degF=$((($degC*9/5)+32));
	else
		echo "Enter temprature between 0-100 celsius"
	fi
}

function degCelsius(){
	if [ $1 -ge 32 -a $1 -le 212 ]
	then
		degC=$((($degF-32)*9/5));
	else
		echo "Enter temprature between 32-212 farhenite"
	fi 
}

read -p "1. Celsius to Farhenite  2. Farhenite to Celsius" choice

case $choice in
	1)
		read -p "Enter temprature in celsius : " degC
		$( degFarhenite $degC );
		;;
	2)
		read -p "Enter temprature in Farhenite : " degF
		$( degCelsius $degF );
		;;
esac

