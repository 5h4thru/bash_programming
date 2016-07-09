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
