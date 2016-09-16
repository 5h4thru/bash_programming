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
# Break command breaks out of the loop and continue skips to next iteration
# Test changes from office laptop
a=1
echo "Numbers from 1 to 10 except 3"
while [ $a -le 10 ]
do
 ((a+=1))
 if [ $a -eq 3 ] || [ $a -eq 11 ]
 then 
  continue
 fi
 echo -n "$a "
done
echo
b=1
echo -e "Stops when 3 is encountered\n"
while [ $b -le 10 ]
do
  echo -n "$b "
  ((b+=1))
  if [ $b = 3 ] # another way of representing -eq or ==
  then
   break
  fi
done
echo
# Interesetingly enough break and continue will take parameteres that defines how many levels they break or continue
echo -e "\nBreak with parameters"
for i in 1 2 3 4 5
do 
 echo "Loop 1: iteration $i"
 for j in 1 2 3
 do
  echo -e "\tLoop 2: Iteration $j"
  for k in 1 2 3 4
  do
    echo -e "\t\tLoop 3: Iteration $k"
    if [ $k = 2 ]
    then
     break 2
    fi
  done
 done
done
echo -e "\nContinue with parameters"
for i in 1 2 3 4 5
do 
 echo "Loop 1: Iteration $i"
 for j in 1 2 3
 do
  echo -e "\tLoop 2: Iteration $j"
  for k in 1 2 3 4
  do
   echo -e "\t\tLoop 3: Iteration $k"
   if [ $k = 2 ]
   then
    continue 2
   fi
  done
 done
done

#########################
# Case Construct
#########################
echo -e "\n##### Case Construct #####"
# the switch case construct in bash scripting
echo -n "Enter a letter or a digit: "
read a
case $a in
 [[:lower:]] ) echo -e "$a is lowercase letter";; # must be terminated by two ;; at every case
 [[:upper:]] ) echo -e "$a is uppercase letter";;
 [0-9] ) echo -e "$a is a number";;
 * ) echo -e "$a is a special character";;
esac

#########################
# Select Construct
#########################
echo -e "\n##### Select Construct #####"
PS3='Pick a color: ' # PS3 stands for Prompt String Three (shell prompts))

select color in "red" "blue" "green" "yellow" "orange" "brown" "black" "gray"
do
 echo "You selected this color: $color"
 break
done
