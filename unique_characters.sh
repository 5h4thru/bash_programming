#!/bin/bash


#########################
# Characters hash
#########################
echo -e "\n##### Characters hash #####"
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
echo -e "\n##### Dots and quotes #####"
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
# ',' converts the string to lowercase
lcase=DSlNetWoRK
echo "Converting first letter to lowercase: ${lcase,}"
echo "Converting all the letters to lowercase: ${lcase,,}"


#########################
# Backquotes and NULL
#########################
echo -e "\n##### Backquotes and NULL #####"
echo "Here we have an escaped quotes \"sample\""
let "val=500/2"
val2=`echo $val`
echo "The value of val2 assigned by backquotes: $val2"

var=20
if [ "$var" -gt 15 ]
then : # The : does nothing, it is like 'pass' in python
else
  echo "$var"
fi


#########################
# !, *, ?
#########################
echo -e "\n##### Exclamation, asterisk, question mark #####"
var=10
if [ "$var" != 0 ]
then
  echo "The value $var is not zero"
else
  echo "The value $var is zero"
fi

let "var1=100*10"
let "var2=100**3"
echo "The value of var1 is $var1"
echo "The value os var2 is $var2"

var1=10
echo $((var2 = var1<20?1:0))
echo "The value of \"var2\" depends on outcome of var1:$var1"


#########################
# Paranthesis
#########################
echo -e "\n##### Paranthesis #####"
var=5
(var=10)
echo "The value of var was $var. Changed inside () and now is $var"
# () triggers a subshell and the values cannot be read by the script
# () can also be used initialize arrays
colors=(red white brown purple)
echo \"{test1,test2,test3}\"
# {} can be used to output the content of multiple files into some file
# cat {wood.txt,test1.txt,test2.txt} > destinationFile.txt
# {} can be used to create a loop
echo {0..10}
# {} can be used to create a block of code i.e like anonymous function
var=10
echo "Value of var before changing inside {} is $var"
{
  var=20
}
echo "Value of var after changing inside {} is $var"


#########################
# OR, modulo, ^, ^^
#########################
echo -e "\n##### ||, &&, module, ^, ^^ #####"
var=1
if [ "$var" -gt 0 ] || [ "$var" -eq 10 ]
then
  echo "The value of var is greater than 0 OR is equal to 10"
else
  echo "No condition is true"
fi
# || is OR; && is AND
# '-' is used to denote optional prefixes
# '~' takes you to home directory
# ^ converts the string to uppercase
word=dSLConnECtion
echo "Converting the first letter to uppercase: ${word^}"
echo "Converting all the letters to uppercase: ${word^^}"

