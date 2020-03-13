#!/bin/bash -x

read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c

echo "Expressions are : "

result=$((a+b*c));
echo "1. a+b*c is : " $result

result=$((c+a/b));
echo "2. c+a/b is : " $result

result=$((a%b+c));
echo "3. a%b+c is : " $result

result=$((a*b+c));
echo "4. a*b+c is : " $result

