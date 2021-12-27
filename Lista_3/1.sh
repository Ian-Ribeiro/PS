#!/bin/bash

read -p "Informe o caminho do arquivo o qual deseja substituir os numeros: " arq

if [ -f $arq ]; then
	read -p "Informe por qual caracter deseja substitui-los: " x
	cat $arq > /tmp/arq_temp
	cat /tmp/arq_temp | tr '[0-9]' "${x}" > $arq
	rm /tmp/arq_temp
else
	echo 'Caminho errado ou nao e um arquivo.'
fi
