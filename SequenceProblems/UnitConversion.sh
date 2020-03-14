#!/bin/bash -x

#Feet to inch
read -p "Enter feets to calculate inch : " feet
inch=`echo "scale=2; $feet/12" | bc -l`;

#rectangular plot in meters
length=60.0
breadth=40.0

metres=`echo "scale=2 ;$length*$breadth/3.28" | bc -l`;

#25 plots in acres 
acres=`echo "scale=2; $length*$breadth*25/43560" | bc -l`;
echo "25 plots of 60*40 in acres is :" $acres 
