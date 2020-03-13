#!/bin/bash -x

SUNDAY=0;
MONDAY=1;
TUESDAY=2;
WEDNESDAY=3;
THURSDAY=4;
FRIDAY=5;
SATURDAY=6;

day=$((RANDOM%7));

case $day in
	$SUNDAY)
		echo "Sunday"
		;;
   $MONDAY)
      echo "Monday"
      ;;
   $TUESDAY)
      echo "Tuesday"
      ;;
   $WEDNESDAY)
      echo "Wednesday"
      ;;
   $THURSDAY)
      echo "Thursday"
      ;;
   $FRIDAY)
      echo "Friday"
      ;;
   $SATURDAY)
      echo "Saturday"
      ;;
esac
