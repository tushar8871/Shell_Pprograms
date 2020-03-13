#!/bin/bash -x

echo "Enter date : "
read date
month=`echo $date| awk -F/ '{print $1}'`;
date1=`echo $date| awk -F/ '{print $2}'`;
year=`echo $date | awk -F/ '{print $3}'`;

june=6
march=3

if [ $date1 -eq 20 ] && [ $month -le $june ] || [ $month -ge $march ]
then
	echo "Yes the $date and $month is present between March 20 and June 20" 
else
	echo "Not in between March 20 and June 20"
fi
