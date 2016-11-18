#!/bin/bash

# :set number :set nonumber will help showing line numbers
# :2,$d deletes everything from the 2nd line from vim editor

#########################
# Arrays Part1
#########################
echo -e "\n##### Arrays Part1 #####"
arr[0]=20
arr[1]=30
echo -e "${arr[0]} \t ${arr[1]}"
# -a with declare command can be used to declare an array
declare -a arr1
arr1=(20 2 a b true 20.d)
for i in ${arr1[*]}
do
 echo $i
done
# another method to delcare arrays are
arr2=([0]=first [1]="second" [7]=45)
# array on variables
a=something123
echo ${a[*]}
echo ${a[0]}
echo ${a[1]}
echo ${#a[@]}
# every literal together in the variable 'a' is considered as one element and hence a[1] returns null
# '${#a[@]}' prints the size of the array
arr3=( zero one two three four five )
echo ${arr3[0]}
echo "Size of the first elemtn in arr3 is ${#arr3[0]}"
echo "Size of the arr3 is ${#arr3[*]}"

#########################
# Arrays Part2
#########################
echo -e "\n##### Arrays Part2 #####"
declare -a colors
echo "Your favorite colors separated by space: "
read -a colors
count=${#colors[*]} # can also use ${#colors[@]}
i=0
while [ $i -lt $count ]
do
 echo ${colors[$i]}
 ((i++))
done
echo ${colors[*]}
unset colors[2]
echo ${colors[*]}
unset colors
echo "No colors. Colors are now deleted"
echo ${colors[*]}

#########################
# Arrays Part3
#########################
echo -e "\n##### Arrays Part3 #####"
arr=( '' )
echo ${arr[*]}
echo ${#arr[*]} # size of the array will be 1
FILE=fd.txt
declare -a arr_file
arr_file=( `cat $FILE` ) # if there is no paranthesis then the entire file is one element
echo ${arr_file[*]}
size=${#arr_file[*]}
echo "\$arr_file size is $size"

