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

#########################
# Part 4
#########################
echo -e "\n##### Part 4 #####"

