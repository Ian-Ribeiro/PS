#!/bin/bash

read -p "Digite o primeiro numero inteiro:" x
read -p "Digite o segundo numero inteiro:" y

if $([ $x -gt $y ]); then
	echo "Menor: $y"
	echo "Maior: $x"
elif $([ $x -lt $y ]); then
	echo "Menor: $x"
	echo "Maior: $y"
else
	echo "Os dois numeros sao iguais."
fi
