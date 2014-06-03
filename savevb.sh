#!/bin/bash
# lee las vm para salvar!
#Chequear que las maquinas estan arriba.
for i in `/usr/bin/VBoxManage list runningvms | grep "{\|}" | cut -d " " -f1 | tr -d "\""`;do
        echo "Esta $i arriba."
	/usr/bin/VBoxManage controlvm $i savestate
echo "Apagando"
done
