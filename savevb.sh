#!/bin/bash
#Chequear que las maquinas estan arriba.
#Check the running machines
for i in `/usr/bin/VBoxManage list runningvms | grep "{\|}" | cut -d " " -f1 | tr -d "\""`;do
#list them
        echo "VM $i is running."
#do savestate and tells you that is done!
	/usr/bin/VBoxManage controlvm $i savestate
echo "$i is saved!"
done
