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
