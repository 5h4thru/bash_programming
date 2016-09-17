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
echo -e "\n##### Eval & Set #####"
if [ ! -z $1 ]
then
 process="ps -e | grep $1"
fi
echo "The ps|grep command run on the parameter you passed with the script"
eval $process
# set is used to change the value of shell options and variables
# + option disables and - options enables
set +o history
set -o history
# set can also be used to set the parameters just like the ones we pass in to the script
echo "Before setting the parameters"
echo "\$1 = $1"
echo "\$2 = $2"
set `echo "first_parameter second_parameter"`
echo "After setting the parameters"
echo "\$1 = $1"
echo "\$2 = $2"

#########################
# Set & Unset
#########################
echo -e "\n##### Set & Unser #####"
# set command can also be used to set positional parameters of contents of the variable
# set -- will unset
# set -- $var will set
var="10 20 30"
echo "var is now $var"
set -- $var
i=1
while [ $i -le $# ]
do
 echo -n "\$$i = "
 eval echo \$$i
 ((i++))
done
set --
echo "\$1 = $1"
echo "\$2 = $2"
echo "\$3 = $3"
