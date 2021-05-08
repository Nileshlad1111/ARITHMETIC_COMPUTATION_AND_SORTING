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

#TO FUNCTION SORTING RESULTS IN DECENDING ORDER
function descendingOrderSort()
{
	for(( index=0; index<${#array[@]}; index ++ ))
	do
		for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
		do
			if (( $(echo "${array[indexOne+1]} > ${array[indexOne]}") ))
			then
				temp=${array[indexOne]}
				array[indexOne]=${array[indexOne+1]}
				array[indexOne+1]=$temp
			fi
		done
	done
	echo "To data descending order:"${array[@]}
}

#TO FUNCTION CALL FOR SORTING IN DECENDING ORDER
descendingOrderSort ${array[@]}

#TO FUNCTION SORTING RESULTS IN ASCENDING ORDER
function ascendingOrderSort()
{
   for(( index=0; index<${#array[@]}; index ++ ))
   do
      for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
      do
         if (( $(echo "${array[indexOne+1]} < ${array[indexOne]}") ))
         then
            temp=${array[indexOne]}
            array[indexOne]=${array[indexOne+1]}
            array[indexOne+1]=$temp
         fi
      done
   done
   echo "To data ascending order:"${array[@]}
}

#TO FUNCTION CALL FOR SORTING IN ASCENDING ORDER
ascendingOrderSort ${array[@]}
