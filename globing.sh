#!/bin/bash

#########################
# Globing
#########################
echo -e "\n##### Globing #####"
# Globing is a part of grep demo
# Each letter in a list with *
echo "ls -l [ir]*"
ls -l [ir]*
echo "ls -l [i-r]*"
ls -l [i-r]*
echo "ls -l {i*,*a*}"
ls -l {i*,*a*}
# bash also performs expansions on uncoded command arguments
echo -e "\n'echo *' lists all the files"
echo *
echo "'echo r*' lists all the files that start with r*"
echo r*
# * goes through all files in current directory
# in globbing * does not match the dot files like .sda, .local etc...
# to include dot files we need to set the nullglob option
# Example of setting/unsetting globbing
echo -e "\nListing of files in the folder with globbing"
for file in *
do
 ls -la "$file"
 shopt -s nullglob
done
