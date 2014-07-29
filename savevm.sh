#!/bin/bash
#Check the running machines
for i in `/usr/bin/VBoxManage list runningvms | grep "{\|}" | cut -d " " -f1 | tr -d "\""`;do
#time it. 
export time=`date`
#list them.
        echo "Doing savestate of  $i."
#do savestate and save in a log file.
	/usr/bin/VBoxManage controlvm $i savestate
echo "$i is saved! At $time" >> /tmp/savevm.log
done
