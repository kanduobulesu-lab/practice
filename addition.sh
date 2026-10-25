#!/bin/sh
echo "Enter the first number:"
read a
echo "Enter the second number:"
read b
sum=$((a + b))
echo "The sum of $a and $b is: $sum"
subs=$((a - b))
echo "The subtraction of $a and $b is: $subs"
mul=$((a * b))
echo "The multiplication of $a and $b is: $mul"
div=$((a / b))
echo "The division of $a and $b is: $div"   
