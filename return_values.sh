#!/bin/bash

#########################
# Part 1 and Part 2
#########################
echo -e "\n##### Part 1 and Part 2 #####"
echo "Hello World!"
# testMe
# $? will give the exit status
# Uncomment the following line to check
# echo "$?"

NO_OF_ARGS=2
E_BAD_ARGS=85
E_UNREADABLE=86

if [ $#	-ne "$NO_OF_ARGS" ]
then
  echo "Usage: `basename $0` testfile1 testfile2"
  exit $E_BAD_ARGS
fi

# -r returns true if file exists and is readable
if [[ ! -r "$1" || ! -r "$2" ]]
then
  echo "Files are not real (i.e) not existing or not readable"
  exit "$E_UNREADABLE"
fi

# cmp compares the two files one byte at a time
# &> redirects both standard error and standard output
# /dev/null is a special place (very important) like a blackhole. Whatever you put in, it goes to NOWHERE
cmp $1 $2 &> /dev/null

if [ $? -eq 0 ]
then
  echo "The files are identical"
else
  echo "The files are not identical"
fi

exit 0

