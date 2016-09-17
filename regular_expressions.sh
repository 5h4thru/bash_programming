#!/bin/bash

#########################
# Grep Demo
#########################
echo -e "\n##### Grep Demo #####"
E_NOPATTERN=71
DICT=/usr/share/dict/linux.words
if [ -z $1 ]
then
 echo
 echo "Usage:"
 echo "`basename $0` \"pattern,\""
 echo "where \"pattern\" is in the form"
 echo "ooo..oo.o,,,"
 echo
 echo "The o's are letters you already now,"
 echo "and the periods are missing letters."
 echo "Letters and periods can be in any position."
 echo "For example: w...i....n"
 echo
 exit $E_NOPATTERN
fi
grep ^"$1"$ "$DICT"

#########################
# Demo For Sed
#########################
echo -e "\n##### Demo For Sed Extended Regular Expressions #####"
E_BADARGS=65
if [ $# -eq 0 ]
then
 echo "Usage: `basename $0` file"
 exit $E_BADARGS
else
 for i
 do
  sed -e '1,/^$/d' -e '/$^/d' $i
 done
fi
