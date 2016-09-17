#!/bin/bash

#########################
# Getopts Command
#########################
echo -e "\n##### Getopts Command #####"
# getopts is a part of internal_commands.sh script
while getopts :dm option
do
 case $option in
  d) d_option=1;;
  m) m_option=1;;
  *) echo "Usage: -dm"
 esac
done
day=`date | awk '{print $1 " " $3}'`
if [ ! -z $d_option ]
then
 echo "Date is $day"
fi
month=`date | awk '{print $2}'`
if [ ! -z $m_option ]
then
 echo "Month is $month"
fi
shift $(($OPTIND - 1)) # for some reason even if I comment this line the script works

#########################
# Shopt Type Jobs Disown
#########################
echo -e "\n##### Shopt Type Jobs Disown #####"
echo "'shopt' is used to set/unset show options"
echo "shopts if set can be used to consider typos too"
echo "'shopt -s cdspell' will consider typos in cd command"
echo -e "\n'type' command identifies a command and test whether it exists or not\nExample: type tar, type cd, etc..."
echo -e "\n'jobs' command belongs to group of commands that control a job"
echo -e "Example:\nsleep 5 &\njobs"
echo -e "\n'disown' is a shell builtin"
echo "disown command removes jobs from shell's active jobs table"

#########################
# Fg  & Kill
#########################
echo -e "\n##### Fg & Kill #####"
echo "fg command brings a process to foreground"
echo -e "Example:\nsleep 1000 &\nsleep 1001 &\njobs\nfg 1\nThis brings the process 1 to foreground"
echo -e "\nWaiting for 5 seconds"
sleep 5 &
wait
times # tells how much time it took to execute a command
echo "Done"
echo -e "\n'kill' can be used to kill a process with pid\n'ps aux' will list the processes\nkill #number"
echo -e "\nBonus:If you name a function with an inubuilt command name, you can use 'command' command to call the bash builtin"
echo -e "Example:\nIf there is a function called ls, you can call the function by invoking 'ls' and can call the inbuilt ls by invoking 'command ls'"
