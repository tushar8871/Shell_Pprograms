#!/bin/bash -x

firstNumber=$((1+RANDOM%6));
secondNumber=$((1+RANDOM%6));
result=`expr $firstNumber + $secondNumber`;
