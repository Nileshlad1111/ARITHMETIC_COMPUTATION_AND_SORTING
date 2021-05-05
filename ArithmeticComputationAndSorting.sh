#!/bin/bash -x

#TO TAKING INPUT FROM USER
read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput

#COMPUTE ARITHMETIC OPERATION
result=$(($firstInput + $secondInput * $thirdInput))
result1=$(($firstInput * $secondInput + $thirdInput))

#TO PRINT
echo "Result:" $result
echo "Result1" $result1
