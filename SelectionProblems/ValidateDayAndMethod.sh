#!/bin/bash -x

MARCH=3
JUNE=6

echo "Enter date : "
read date
month=`echo $date| awk -F/ '{print $1}'`;
date1=`echo $date| awk -F/ '{print $2}'`;
year=`echo $date | awk -F/ '{print $3}'`;

if [ $month -le $MARCH ] && [ $date1 -lt 20 ] 
then
	echo "Not in between March 20 and June 20"
elif [ $month -ge $JUNE ] && [ $date1 -gt 20 ]
then
	echo "Not in between March 20 and June 20"
elif [ $month -ge $MARCH ] && [ $month -le $JUNE ]
then
	echo "Yes the $date and $month is present between March 20 and June 20"
fi
