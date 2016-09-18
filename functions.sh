#!/bin/bash

#########################
# Functions Part1
#########################
echo -e "\n##### Functions Part1 #####"
echo -e "A function can be called only after it is defined\nHowever, a function can be called inside a fucntion without it being defined"
function1() {
 echo "Calling \"f2\" from \"f1\""
 function2
}
function2() {
 echo "This is \"f2\""
}
function1
# nested functions are posisble but there is genrally no point in using them
# caveat being, they need to be called in the order they were nested
echo -e "\nParameterized functions"
fun1() { # no need to mention the variables to be used in definition
 echo "First arg is $1, second arg is $2, third arg is $3"
}
var1=10
var2=20
fun1 $var1 var2

#########################
# Functions Part2
#########################
echo -e "\n##### Functions Part2 #####"
E_PARAM_ERR=250
EQUAL=251
fun_max() {
 if [ -z $2 ]
 then
  return $E_PARAM_ERR
 fi
 if [ $1 -eq $2 ]
 then
  return $EQUAL
 else
  if [ $1 -gt $2 ]
  then
   return $1
  else
   return $2
  fi
 fi
}
fun_max 12 13 100
return_value=$?
if [ $return_value -eq $E_PARAM_ERR ]
then
 echo "Function needs two parameters"
elif [ $return_value -eq $EQUAL ]
then
  echo "Numbers are equal"
else
 echo "Max number is $return_value"
fi
# in awk command -F is used to specify delimiter
ARGS=1
E_BADARGS=85
FILE=/etc/passwd
pattern=$1
if [ $# -ne $ARGS ]
then
 echo "Usage: `basename $0` username"
 exit $E_BADARGS
fi
get_real_name() {
 while read line
 do
  echo "$line" | grep $1 | awk -F":" '{ print $5 }'
 done
} <$FILE

get_real_name $pattern
