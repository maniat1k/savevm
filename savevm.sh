#!/bin/bash
#Check the running machines
for i in `/usr/bin/VBoxManage list runningvms | grep "{\|}" | cut -d " " -f1 | tr -d "\""`;do
#time it. Leave two options here this is a draft.
#export time=`date "+%H:%M"`
export time=`date`
#list them
        echo "Doing savestate of  $i."
#do savestate and save in a log file.
	/usr/bin/VBoxManage controlvm $i savestate
echo "$i is saved! at $time" >> /tmp/savevm.log
done
