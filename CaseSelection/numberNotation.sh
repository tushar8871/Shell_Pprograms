#!/bin/bash -x


read -p "Enter number and it should be like 1,10,100,etc and less than million: " number

case $number in
	1)
		echo "Unit "
		;;
   	10)
      		echo "Tens "
      		;;
   	100)
      		echo "Hundred "
      		;;
   	1000)
      		echo "Thousand "
      		;;
   	10000)
      		echo "Ten Thousand "
      		;;
   	100000)
      		echo "Lakh "
      		;;
	1000000)
		echo "Million"
		;;
	*)
		echo "Input must below A million"
		;;
esac

