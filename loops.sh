#!/bin/bash

#########################
# For Loops
#########################
echo -e "\n##### For Loops #####"
for i in 1 2 3 4 5
do
 echo "outer loop $i ----------------"
 for j in {1..3} # can also be specified in this format
 do
  echo "inner loop $j"
 done
done

#########################
# While Loops
#########################
echo -e "\n##### While Loops #####"
a=unset # unset here is just a string
prev=$a
while
 echo -e "Previous variable = $prev\n"
 prev=$a
 [ $a != end ]
do
 echo "Input end to exit or anything else to continue"
 read a
 echo "variable = $a"
done

#########################
# Until Loops
#########################
echo -e "\n##### Until Loops #####"
until [ "$n" = end ] # for some reason = and == acts the same way
do
 echo "Input end to exit or anything else to continue"
 read n
done

#########################
# Break & Continue Part 1
#########################
echo -e "\n##### Break & Continue Part 1"
# Break breaks the loop and continue skips to next iteration
# Test changes
