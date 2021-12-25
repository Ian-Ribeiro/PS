#!/bin/bash

read -p "Digite o caminho do primeiro arquivo:" x

if $([ ! -f $x ]); then
	echo "erro: o arquivo ${x} nao existe"; exit
fi

read -p "Digite o caminho do segundo arquivo:" y

if $([ ! -f $y ]); then
	echo "erro: o arquivo ${y} nao existe"; exit
fi

read -p "Digite o caminho do terceiro arquivo:" z

if $([ ! -f $z ]); then
	echo "erro: o arquivo ${z} nao existe"; exit
fi

read -p "Digite o caminho do quarto arquivo:" o

if $([ ! -f $o ]); then
	echo "erro: o arquivo ${o} nao existe"; exit
fi

lx=$(cat $x | wc -l)
ly=$(cat $y | wc -l)
lz=$(cat $z | wc -l)
lo=$(cat $o | wc -l)
aux=0

for i in $lx $ly $lz $lo; do
	if $([ $aux -lt $i ]); then
		aux=$i
	fi
done

if $([ $aux -eq $lx ]); then
	echo "O arquivo com o maior numero de linhas e: ${x}"
elif $([ $aux -eq $ly ]); then
	echo "O arquivo com o maior numero de linhas e: ${y}"
elif $([ $aux -eq $lz ]); then
	echo "O arquivo com o maior numero de linhas e: ${z}"
else
	echo "O arquivo com o maior numero de linhas e: ${o}"
fi
