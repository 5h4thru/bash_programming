#!/bin/bash

#########################
# Part 1
#########################
echo -e "\n##### Part 1 #####"
# Nested IFs

let "x=1"
if [ "$x" -gt 0 ]
then
  if [ "$x" -lt 5 ]
  then
    echo "x is less than 5 are more than 0"
  fi
fi

# Variables can store paths
path=/bash_programming/variables_parameters.sh
if [ -e "$path" ]
then
  echo "The file `basename $path` exists"
else
  echo "The files does not exist"
fi

# Double parantheses  ((..)) returns the exit status after evaluating an arithmetic expression. Returns 0 if statement is TRUE else returns 1
(( 2 > 1))
echo "Exit status is $?"
	
#########################
# Part 2
#########################
echo -e "\n##### Part 2 #####"
# File test operators
# -e : File exists?
# -f : File regular (i.e) not a device file or directory?
# -s : File zero size?
# -r : File readable?
# -X : Does user have permission to eXecute the file?
# -W : Does user have permission to Write to file?
# ! : Reverses the result of test operator
# -z : Check if the argument is given
# [ -z STRING ] : True if length of STRING is zero

NO_OF_ARGS=2
E_NOARGS=65
E_BADARGS=85
E_UNREADABLE=86
E_NOFILE=87
E_NOTFILE=88
E_SIZE=89

if [[ -z "$1" || -z "$2" ]]
then
  echo "Both arguments are required"
  exit "$E_NOARGS"
fi

if [[ "$#" -ne "$NO_OF_ARGS" ]]
then
  echo "USAGE: `basename $0` file1 file2"
  exit "$E_BADARGS"
fi

if [[ ! -e "$1" || ! -e "$2" ]]
then
  echo "Files does not exist"
  exit "$E_NOFILE"
  elif [[ ! -f "$1" || ! -f "$2" ]]
  then
    echo "Files need to be regular files"
    exit "$E_NOTFILE"
  elif [[ -s "$1" || -s "$2" ]]
  then
    echo "Files are zero size"
    exit "$E_SIZE"
  elif [[ ! -r "$1" || ! -r "$2" ]]
  then
    echo "No read permission"
    exit "$E_UNREADABLE"
fi

# cat command outputs the contents of the file
# cat $1 $2 | sort > sortedFiles.txt

if [ $? -eq 0 ]
then
  echo "Execution of script was successful"
else
  echo "Execution of script failed"
fi
cat 
