#!/bin/bash

#########################
# Printf
#########################
echo -e "\n##### Printf #####"
declare -r PI=3.141592653589
printf "The second decimal value of PI is %1.2f\n" $PI

#########################
# Read
#########################
echo -e "\n##### Read #####"
# -s: silent, does not echo the input
# -n3: accepts only three characters for the input
# -p: echos a prompt before reading the input
read -s -n3 -p "Press an arrow: " arrow
up=$'\x1b[A'
down=$'\x1b[B'
right=$'\x1b[C'
left=$'\x1b[D'
case "$arrow" in
 $up) echo "You pressed up";;
 $down) echo "You pressed down";;
 $right) echo "You pressed right";;
 $left) echo "You pressed left";;
esac
# A rather easy example
echo "Enter a string"
read -r var
echo "$var"
# Reading from a file
echo "Tutorial for reading from a file"
while read line # variable 'line' can be anything its just a name
do
 echo "$line"
done < testfile.txt # this is the file from which the loop reads

#########################
# Eval & Set
#########################


