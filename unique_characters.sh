#!/bin/bash


#########################
# Characters hash
#########################
echo "Hello World! #Not a comment"
echo Hello World! #Is a comment

name=tea
echo The length of $name is ${#name}
# Number conversion
echo The decimal representation of binary 111 is $((2#111))

var=10
if [[ $var -gt 0 ]]
then
  echo The number is positive
fi


#########################
# Dots and quotes
#########################
# dot and double dots
# dot represents current directory
# double dots represents parent directory

# Difference between quotes
colors="red black white"
echo $colors

let "i=1"
for col in $colors
do
  echo "Iteration $i"
  ((i++))
  echo $col
done

# Double quotes preserves the value of the variables (does not separate them into array)
let "i=1"
for col in "$colors"
do
  echo "Iteration $i"
  ((i++))
  echo $col
done

# Single quotes does not allow referencing variables
let "i=1"
for col in '$colors'
do
  echo "Iteration $i"
  ((i++))
  echo $col
done

# Comma separator
# let performs arithmetic operations on variables
let "y=((x=20,x/2))"
echo "Value of y is $y"
echo "Value of x is $x"

lcase=DSlNetWoRK
echo "Converting first letter to lowercase: ${lcase,}"
echo "Converting all the letters to lowercase: ${lcase,,}"


#########################
# Backquotes and NULL
#########################
echo "Here we have an escaped quotes \"sample\""
let "val=500/2"
val2=`echo $val`
echo "The value of val2 assigned by backquotes: $val2"

var=20
if [ "$var" -gt 15 ]
then : # The : does nothing
else
  echo "$var"
fi


