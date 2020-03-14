#!/bin/bash -x


read -p "Enter number : " number

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
esac

