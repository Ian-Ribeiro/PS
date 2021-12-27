#!/bin/bash

read -p "Informe o caminho do arquivo o qual deseja deletar as linhas vazias: " arq

if [ -f $arq ]; then
	cat $arq | tr -s '\n' > /tmp/arq_temp
	cat /tmp/arq_temp > $arq
	rm /tmp/arq_temp
else
	echo 'Caminho errado ou arquivo inexistente.'
fi
