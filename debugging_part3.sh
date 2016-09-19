#!/bin/bash

#########################
# Debugging Part3
#########################
echo -e "\n##### Debugging Part3 #####"
# trapping signals
# generally use exit or debug signals
trap 'echo "Listing variables: m=$m n=$n o=$o"' EXIT
# trap is executed only when the code EXITs
m=1
n=2
o=3
let "sum = $m+$n+$o"
echo "The sum is $sum"

E_BADARGS=65
E_NOFILE=66
trap 'echo "no param"' EXIT
if [ -z $1 ]
then
 exit $E_BADARGS
fi
trap - EXIT # basically turns of the trap since the conditon is passed and we no longer neeed that trap
trap 'echo "File $1 not found"' EXIT
if [ -f $1 ]
then
 rm $1
 echo "$1 removed"
else
 exit $E_NOFILE
fi
trap - EXIT

# trap can be set to execute after each line in the script by using DEBUG
trap 'echo "LISTING VARIABLES: a = \"$a\""' DEBUG
a=3; line=$LINENO
echo "\$a initialzied to $a on line $line"
let "a *= 2"; line=$LINENO
echo "\$a multiplied by 2 on line $line"
