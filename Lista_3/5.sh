#!/bin/bash

#Nao entendi o porque do if printar a mensagem toda vez que checa sua condicao.
#Se eu colocala entre colchetes ele nao consegue achar o colchete que fecha "]".
#Se eu colocare entre parentesis ele entende que ${sen} e um comando e da erro.

echo 'Digite sua senha abaixo:'
read -s sen

x=0
while [ $x -eq 0 ]; do

	if echo "${sen}" | grep -E '(.){6}'; then
		if echo "${sen}" | grep -E '[A-Z]';then
			if echo "${sen}" | grep -E '[0-9]';then
				echo 'Senha valida'
				x=1
	fi
	fi
	fi

	if [ $x -eq 0 ]; then
		echo 'Senha invalida. Digite outra abaixo:'
		read -s sen
	fi
done
