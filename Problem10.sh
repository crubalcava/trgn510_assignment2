#!/bin/bash
# multiplies two variables and converts them to celcius
num1=$1
num2=$2

ans1=`echo $num1 + 273.15 |bc -l`

ans2=`echo $num2 \* $ans1 |bc -l`

ans3=`echo $ans2 - 273.15 | bc -l`

echo $ans3
