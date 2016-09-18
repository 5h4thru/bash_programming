#!/bin/bash

#########################
# STD in, out, err Part1
#########################
echo -e "\n##### STD in, out, err Part1 #####"
echo "0 is for input, 1 is for output, 2 is for error"
echo -e "'>' is used to add to a file, '>>' is usde to append to a file\ncommand > filename.txt 2>&1\n'2>&1' will append std output and std error to filename.txt"
echo -e "\nAssigning a file descriptor"
echo "12345" > fd.txt
exec 3<>fd.txt # opens the file and assign a filedescriptor 3
read -n 2 <&3 # reads two characters from the file via filedescriptor
echo -n . >&3
exec 3>&- # closing the filedescriptor
cat fd.txt

#########################
# STD in, out, err Part2
#########################
echo -e "\n##### STD in, out, err Part2 #####"
# std in out can be redirected to file using 'exec' command
echo "The second file contains the contents of first file"
E_FILE_ACCESS=70
E_BADARGS=71
if [ ! -r $1 ]
then
 echo "Unable to read from the input file!"
 echo "Usage: $0 input-file output-file"
 exit $E_FILE_ACCESS
fi
if [ -z $2 ]
then
 echo "Please specify output file"
 echo "Usage: $0 input-file output-file"
 exit $E_BADARGS
fi

exec 4<&0 # redirect std input to filedescriptor 4
exec < $1

exec 7>&1 # redirect std output to filedescriptor 7
exec > $2

tr a-z A-Z

exec 1>&7 7>&- # restore std output and delete filedescriptor
exec 0<&4 4<&- # restor std input and delete filedescriptor

echo -e "'&&' can be used to append commands together\n"

count=0
cat fd.txt | while read line;
do
{
 echo $line
 ((count++))
}
done
echo "Number of read lines is $count"
echo -e "\nFrom this example we see that the value of count is not accessible outside the while loop\nwe can solve this problem with input output redirection\n"
count=0
exec 3<>fd.txt
while read line <&3
do
{
 echo "$line"
 ((count++))
}
done
exec 3>&-
echo "Number of read lines is $count"
