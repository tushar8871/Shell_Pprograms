#!/bin/bash -x

ZERO=0;
ONE=1;
TWO=2;
THREE=3;
FOUR=4;
FIVE=5;
SIX=6;
SEVEN=7;
EIGHT=8;
NINE=9;
singleDigit=$((RANDOM%10));


case $singleDigit in
	$ZERO)
		echo "zero"
		;;
	$ONE)
		echo "one"
		;;
	$TWO)
		echo "two"
		;;
	$THREE)
		echo "three"
		;;
	$FOUR)
		echo "four"
		;;
	$FIVE)
		echo "five"
		;;
   $SIX)
      echo "six"
      ;;
   $SEVEN)
      echo "seven"
      ;;
   $EIGHT)
      echo "eight"
      ;;
   $NINE)
      echo "nine"
      ;;
esac

