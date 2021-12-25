#!/bin/bash

echo "$(ls -1)" > /tmp/ls
tamanho=$(cat /tmp/ls | wc -l)
tamanho=$(($tamanho+1))
aux=""

echo "DIRS"

for (( i=1; i<$tamanho; i++ )); do
	aux=$( head -n $i /tmp/ls )
	
	if $([ -d $aux ]);then
		echo 'ok'
	fi
done
