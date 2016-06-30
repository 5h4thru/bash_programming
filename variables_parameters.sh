#!/bin/bash


#########################
# Part 1
#########################
echo -e "\n##### Part 1 #####"
var=10
echo "Value of var before unset: $var"
unset var
echo "Value of var after unset: $var"

# Assign values to variables with read
echo "Type in some value:"
read var2
echo "The value you typed is \"$var2\""
echo "Value printed with {} is \"${var2}\""

# Assign values in for loop
for var in {0..10}
do
  echo -n $var
done


#########################
# Part 2
#########################
echo -e "\n\n##### Part 2 #####"
var="A L O T    O F S     P A C    E   S"
echo "echo without quotes"
echo $var
echo "echo with quotes"
echo "$var"

var=
let "var += 10"
echo "Value of var is $var"

# var="test1 test2 test3"
var=test1\ test2\ test3
echo "Assinging the variable without quotes"
echo "$var"

# Assinging output of a statement to a variable
# Uncoment to test
# var=$(ls -la)
# echo "Output of var set by 'ls -la' output $var"


#########################
# Part 3
#########################
echo -e "\n##### Part 3 #####"
num=1100
let "num -= 10"
echo "Value of num is $num"

# Replacement/Substitution
var=${num/10/b}
echo "Value of var after replacing 10 with letter b in num and assigning it to var: $var"

# $(command) is "command substitution".  As you seem to understand, it runs the command, captures its output, and inserts that into the command line that contains the $()
# ${parameter} is "parameter substitution".  A lot of information can be found in the shell’s man page


#########################
# Part 4
#########################
echo -e "\n##### Part 4 #####"
# -n tests if the parameter is specified

if [ -n "$1" ]
then
  echo "1st argument is $1"
fi

if [[ -n "$2" ]]
then
  echo "2nd argument is $2"
fi

if [[ -n "$3" ]]
then
  echo "3rd argument is $3"
fi

if [[ -n "$4" ]]
then
  echo "4th argument is $4"
fi

if [[ -n "$5" ]]
then
  echo "5th argument is $5"
fi

if [[ -n "$6" ]]
then
  echo "6th argument is $6"
fi

if [[ -n "$7" ]]
then
  echo "7th argument is $7"
fi

if [[ -n "$8" ]]
then
  echo "8th argument is $8"
fi

if [[ -n "$9" ]]
then
  echo "9th argument is $9"
fi

if [ -n "${10}" ]
then
  echo "10th argument is ${10}"
fi

echo "List of arguments: "$*""
echo "Name of the script is \""$0"\""
if [[ "$#" -lt 10 ]]
then
  echo "Require 10 arguments to run the part4 properly"
fi

