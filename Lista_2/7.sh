#!/bin/bash

read -p "Digite quatro numeros que possuam duas casas decimais: " x y z o
aux=0

for i in $x $y $z $o; do
	#comp=$((echo scale=2; $i < $aux" | bc))
	#echo ${comp}"
	if $([ 1 -eq "$(echo "scale=2; $i < $aux)" | bc ]); then
		$aux=$i
	fi
done

echo "${aux}"




#aux=0

#for i in $x $y $z $o; do
#	if $([ $aux -gt $i ]); then
#		aux=$i
#	fi
#one

#if $([ $aux -eq $lx ]); then
#	echo## ##O3 arquivo com o maior numero de linhas e: ${x}"
#elif $([ $aux -eq $ly ]); then
#	echo O arquivo com o maior numero de linhas e: ${y}"
#elif $([ $aux -eq $lz ]); then
#	echo O arquivo com o maior numero de linhas e: ${z}"
#else
#	echo O arquivo com o maior numero de linhas e: ${o}"
#fi
