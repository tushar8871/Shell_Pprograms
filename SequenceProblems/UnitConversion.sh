#!/bin/bash -x

#Feet to inch
read -p "Enter feets to calculate inch : " feet
inch=`echo "$feet/12" | bc -l`;
echo "$feet in inch is :"  $inch


#rectangular plot in meters
length=60.0
breadth=40.0

metres=`echo "$length*$breadth/3.28" | bc -l`;
echo "Rectangular plot 60*40 in meters is :" $metres


#25 plots in acres 

acres=`echo "$length*$breadth*25/43560" | bc -l`;
echo "25 plots of 60*40 in acres is :" $acres 
