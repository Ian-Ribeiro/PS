#!/bin/bash

x=0

while [ $x -eq 0 ]; do
	echo 'Opcao r: Executa arquivo especificado.'
	echo 'Opcao a: Remove todas as letras de um arquivo.'
	echo 'Opcao b: Remove todos os digitos de um arquivo.'
	echo 'Opcao c: Substitui tudo que nao for letra nem digito por ~.'
	echo 'Opcao q: Sai do script.'
	echo
	read -p "Digite a opcao que deseja: " opc

	if [ $opc = r ]; then
		read -p "Digite o caminho do arquivo o qual deseja executar: " arq
		echo "$(${arq})"
	fi

	if [ $opc = a ]; then
		read -p "Digite o caminho do arquivo o qual deseja remover todas as letras: " arq
		echo "$(cat ${arq} | sed -E 's/[a-z]//gi')"
	fi

	if [ $opc = b ]; then
		read -p "Digite o caminho do arquivo o qual deseja remover todos os digitos: " arq
		echo "$(cat ${arq} | sed -E 's/[0-9]//g')"
	fi

	if [ $opc = c ]; then
		read -p "Digite o caminho do arquivo o qual deseja substituir tudo que nao for alfanumerico por ~: " arq
		echo "$(cat ${arq} | sed -E 's/[^[:alnum:]]/~/g')"
	fi

	if [ $opc = q ]; then
		echo 'Ate breve!'
		echo
		x=1
	fi

	if [ $opc != r ]; then
		if [ $opc != a ]; then
			if [ $opc != b ]; then
				if [ $opc != c ]; then
					if [ $opc != q ]; then
						echo "Opcao invalida. Tente novamente."
	fi
	fi
	fi
	fi
	fi
done
