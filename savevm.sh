#!/bin/bash
#Chequear que las maquinas estan arriba.
#Check the running machines
for i in `/usr/bin/VBoxManage list runningvms | grep "{\|}" | cut -d " " -f1 | tr -d "\""`;do
#list them
        echo "Doing savestate of  $i."
#do savestate and save in a log file.
	/usr/bin/VBoxManage controlvm $i savestate
echo "$i is saved!" >> /tmp/savevm.log
done