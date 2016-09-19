#!/bin/bash

#########################
# OR AND Lists
#########################
echo -e "\n##### OR AND Lists #####"
E_BADARGS=85
if [ ! -z "$1" ] && echo "First parameter is $1" && echo "Second parameter is $2" # && truth table
then
 echo "Two parameters are passed to the script"
else
 echo "Usage: `basename $0` arg1 arg2 && exit $E_BADARGS"
fi
# OR example
# [ -z "$1" ] || [ ! -f "$1" ] || rm -f "$1"; echo "removed"
a=1
b=2
c=3
[ "$a" -ge "$b" ] || [ "$b" -gt "$c" ] || ((c+=a+b)) ; echo "$c"
[ "$a" -ge "$b" ] || [ "$c" -gt "$b" ] || ((c+=a+b)) ; echo "$c" # when the second condition evaluates to true then the third condition will not be called and the program exits
