#!/bin/bash
export time=`date`
#Check the running machines on root
for i in `/usr/bin/VBoxManage list runningvms | grep "{\|}" | cut -d " " -f1 | tr -d "\""`;do
echo "Doing savestate of $i at $time"
/usr/bin/VBoxManage controlvm $i savestate
echo "$i is saved! At $time" >> /tmp/savevm.log
done
