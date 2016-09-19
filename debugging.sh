#!/bin/bash

#########################
# Debugging Part1
#########################
echo -e "\n##### Debugging Part1 #####"
echo -e "\n'sh -n name.sh' will compile the script for syntax errors without actually running the srcipt\n'sh -v name.sh' will first display the entire code and then display the errors\n'sh -x name.sh' will display the command and then the output of the command"

#########################
# Debugging Part2
#########################
echo -e "\n##### Debugging Part2 #####"
# a custom function that detects where the bug is
debug_condition() {
 E_CONDITION=99
 if [ ! $1 ]
 then
  echo "File $0: Condition failed"
  exit $E_CONDITION
 else
  exit
 fi
}
a=3
b=2
while [ $a -lt $b ]
do
 ((a++))
done
condition="$a -lt $b"
echo "\$condition is $condition"
debug_condition "$condition"
