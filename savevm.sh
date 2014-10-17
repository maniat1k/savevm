#!/bin/bash
export path=`/usr/bin/realpath savevm.sh`
export data=`/usr/bin/grep savevm.sh /etc/init.d/halt.local`
export time=`date`

#Check if the script is saved on halt.local.
if [[ "$data" = $(/usr/bin/realpath savevm.sh) ]]; then
echo "loaded"
else
echo "missing: fixing for next time!"
echo $path >> /etc/init.d/halt.local
fi

#Check the running machines on root.
for i in `/usr/bin/VBoxManage list runningvms | grep "{\|}" | cut -d " " -f1 | tr -d "\""`;do
echo "Doing savestate of $i at $time"
/usr/bin/VBoxManage controlvm $i savestate
echo "$i is saved! At $time" >> /tmp/savevm.log
done
