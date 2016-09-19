#!/bin/bash

#########################
# Bubble Sort
#########################
echo -e "\n##### Bubble Sort #####"
# This is a part of the arrays chapter
swap() {
 local temp=${colors[$1]}
 colors[$1]=${colors[$2]}
 colors[$2]=$temp
 return
}
declare -a colors
echo "Type in colors with spaces: "
read -a colors
echo -e "\nArray before sorting: "
echo ${colors[*]}
size=${#colors[*]}
for (( last = $size - 1 ; last > 0 ; last-- ))
do
 for (( i = 0 ; i < last ; i++ ))
 do
  [[ "${colors[$i]}" > "${colors[$((i+1))]}" ]] && swap $i $((i+1))
 done
done
echo -e "\nArray after sorting: "
echo ${colors[*]}
