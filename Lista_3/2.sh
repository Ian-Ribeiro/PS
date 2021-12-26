#!/bin/bash

read -p "Informe o caminho do arquivo o qual deseja deletar as linhas vazias: " arq

if $([ -f $arq ]); then
	linhas=$(cat $arq | wc -l)
	linhas=$(( $linhas + 1 ))
	cat $arq > /tmp/arq_temp

	for (( i=1; i<$linhas; i++ )); do
		linha=$( cat /tmp/arq_temp | head -n $i | tail -n 1 )     # tr -d '\n' > $arq
		
rm /tmp/arq_temp
else
	echo 'Caminho errado ou nao e um arquivo.'
fi
