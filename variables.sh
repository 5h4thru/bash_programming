#!/bin/bash

#########################
# Part 1
#########################
echo -e "\n##### Part 1 #####"
# Built-in variables
# $BASH : path bash binaries
# #BASH_ENV : holds source once script is invoked (used within scripts generally)
# '$$' : holds the process ID of the current process

echo "The process ID of the current bash script is $$"
# $BASH_VERSION : holds bash version
# holds more detailed information of the bash installed

for i in {0..5}
do
  echo "BASH_VERSINFO[$i] is ${BASH_VERSINFO[$i]}"
done
# [0] : major version
# [1] : minor version
# [2] : patch level
# [3] : build version
# [4] : release version
# [5] : architecture for which it works

# $PATH : consists of path (like system variables paths in windows)
# $CDPATH : list of search paths that is avaialbe to CD command
# $EDITOR : default editor that the script invokes
# $UID : User's real ID number (read-only mode)
# $EUID : Effective user ID (ID of user's current identity)
# By default root UID is 0

ROOT_UID=0
echo -n "You are : " # -n does not print trailing newline
if [ $UID -eq $ROOT_UID ]
then
  echo "root. Your \$UID = $UID"
else
  echo "user. Your \$UID = $UID"
fi

# $FUNCNAME : variables that have function name
someFunction()
{
  echo "Function name is $FUNCNAME"
}
someFunction

echo "Outside the function. \$FUNCNAME = $FUNCNAME"
# Here, $FUNCNAME will be null since it is outside the funciton

#########################
# Part 2
#########################
echo -e "\n##### Part 2 #####"
# $GROUPS : the groups where the user belongs
echo "User belongs to group(s): $GROUPS"
# $HOME : home directory
# $HOSTNAME : hostname
if [[ $HOSTNAME && $USER && $HOME ]]
then
  echo "Hostname : $HOSTNAME"
  echo "User : $USER"
  echo "Home : $HOME"
else
  echo "The variables are not set"
fi
# $HOSTTYPE : information about the system hardware
# $MACHTYPE : machine type of the system

# IFS is internal field separator; default value is space
colors="red-brown-orange"
new_colors="red+brown+orange"
echo -e "\nIFS=-"
IFS=-
echo "colors:" $colors
echo "new_colors :" $new_colors
echo -e "\nIFS=+"
IFS=+
echo "colors :" $colors
echo "new_colors :" $new_colors

# $LINENO : line number
# $OLDPWD : old pwd
# $OSTYPE : OS type
# $PIPESTATUS : exit status of piped commands
echo "Line number : $LINENO"
# cat test.txt | sort; echo ${PIPESTATUS[*]} prints two numbers for each in the pipe command

#########################
# Part 3
#########################
echo -e "\n##### Part 3 #####"
# read is input from the keyboard
# $REPLY stores the value from read by default
echo "A sample question?"
read
# Can read into a variable also
# read var
echo "The answer to the question is $REPLY"

# $SECONDS : time for which the scipt has been running
LIMIT_TIME=9
TIME_INTERVAL=3
echo -e "\nThis script will run for $LIMIT_TIME seconds"
echo "Press Ctrl+C to exit before time limit"
#while [ "$SECONDS" -le "$LIMIT_TIME" ]
#do
#  echo "This script has been running for $SECONDS seconds"
#  sleep $TIME_INTERVAL
#done

# declare and typeset difference is that typeset works in ksh scripts and is portable
declare -r var_r=5 # -r makes it read-only
echo "The value of var_r is $var_r"
declare -i var_i=10 # -i means integer
echo "The value of var_i is $var_i"
var_i=blue
echo "The value of var_i now is $var_i"

#########################
# Part 4
#########################
echo -e "\n##### Part 4 #####"
# let command is used to perform arithmetic operations
# Also can use delcare comand with -i to enforce the variable to be able to store result of arithmetic operation
# declare with -a makes the variable an array
declare -a x=(9 8 7 6 5)
for i in {0..4}
do
 echo "${x[$i]}"
 let i+=1
done

# declare -f declares a function
declare -f someNewFunction
someNewFunction()
{
 echo "Hey, are you having a good time? Yes, no, maybe? Or you just don't care at all?"
}
someNewFunction

# declare -x enables the variable to be exported outside of the environment of the script
declare -x var_x=10
echo "Value of \$var_x is $var_x"
# Will learn about the export functionality in later tutorial

#########################
# Part 5
#########################
# Random number generator
MAX=10
i=1
while [ "$i" -le "$MAX" ]
do
 n=$RANDOM
 echo "Value of random number is $n"
 let i+=1
done
# RANDOM function is not completely random. They take a few parameters into consideration and then generate a number
