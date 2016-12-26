#!/bin/bash
cd /usr/src/dotXmodmap
count=1;
for (( i=1; i <= 9999999999; i++ ))
do
echo
echo -------------------
echo -------------------
echo
echo -n $0:  
main_script_name=`echo $0 | sed 's/.\///' `
main_script_pid=` ps aux | grep $main_script_name | grep -v vim  | grep -v grep | gawk '{print $2}' `
echo $main_srcipt_pid 
echo -n $main_script_pid >> pid_main_script.log
echo \ \(       The first number, which would be the same, is the main_scrip_pid, if kill -9 the number, the scrip will stop.\) >> pid_main_script.log

xmodmap /usr/src/dotXmodmap 1> out.std.log 2>err.std.log

conut=`expr $count + 2`
# echo $count | tee >> conut.log
echo -n I have run xmodmap command $i times this term.
echo -n 时间: >> conut.log
date  >> conut.log
echo
sleep 4
done
