#!/bin/bash -x

echo "Enter date : "
read date
month=`echo $date| awk -F/ '{print $1}'`;
date1=`echo $date| awk -F/ '{print $2}'`;
year=`echo $date | awk -F/ '{print $3}'`;

june=6
march=3

if [ $month -eq $march ] && [ $date1 -lt 20 ] 
then
	echo "Not in between March 20 and June 20"
elif [ $month -eq $june ] && [ $date1 -gt 20 ]
then
	echo "Not in between March 20 and June 20"
elif [ $month -ge $march ] && [ $month -le $june ]
then
	echo "Yes the $date and $month is present between March 20 and June 20"
fi
