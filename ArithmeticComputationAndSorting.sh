#!/bin/bash -x

#TO DECLEAR THE DICTIONARY
declare -A arithmaticOperation

#TO TAKING INPUT FROM USER
read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput

#COMPUTE ARITHMETIC OPERATION
result=$(($firstInput + $secondInput * $thirdInput))
result1=$(($firstInput * $secondInput + $thirdInput))
result2=$(($thirdInput + $firstInput/$secondInput))
result3=$(($firstInput % $secondInput + $thirdInput))

#TO PRINT
echo "Result:" $result
echo "Result1:" $result1
echo "Result2:" $result2
echo "Result3:" $result3

#TO STORE THE DICTIONARY
arithmaticOperation[result]=$result
arithmaticOperation[result1]=$result1
arithmaticOperation[result2]=$result2
arithmaticOperation[result3]=$result3

#TO READ VALUE FROM THE DICTIONARY INTO THE ARRAY
for((index=0; index<=${#arithmaticOperation[@]}; index++))
do
  array[index]=${arithmaticOperation[result$((index+1))]}
done
#TO PRINT
echo "${array[@]}"

#TO USE SORT COMMAND
ascendingNumber=($(echo ${arithmaticOperation[*]} | tr " " "\n" | sort -n))
decendingNumber=($(echo ${arithmaticOperation[*]} | tr " " "\n" | sort -nr))

#TO PRINT THE DESENDING ORDER
echo "Shorting in Descending Order"
echo "Shorted Array is : ${decendingNumber[@]}"

#TO PRINT THE ASENDING ORDER
echo "Shorting in Ascending Order"
echo "Shorted Array is : ${ascendingNumber[@]}"
