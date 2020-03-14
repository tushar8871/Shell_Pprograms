#!/bin/bash -x

read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c

echo "Expressions are : "

result=$((a+b*c));

result=$((c+a/b));

result=$((a%b+c));

result=$((a*b+c));
