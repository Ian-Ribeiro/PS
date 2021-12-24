#!/bin/bash

echo '$USER: informa o nome do usuario que esta utilizando o shell.'
echo "Em execucao: $USER"
echo
echo '$LANG: informa o idioma em que esta sendo rodado o SO.'
echo "Em execucao: $LANG"
echo
echo '$PWD: informa o diretorio atual.'
echo "Em execuacao: $PWD"
echo
echo '$UID: informa o UID do usuario atual.'
echo "Em execucao: $UID"
echo
echo '$RANDOM: gera um numero aleatorio.'
echo "Em execucao: $RANDOM"
echo
echo '$#: armazena a quantidade de parametros de linha de comandos inserido pelo usuario.'
echo "Em execucao: $#"
echo
echo '$$: armazena o PID do script que estiver em execucao.'
echo "Em execucao: $$"
echo
echo '$@: armazena o valor de todos os parametros passados.'
echo "Em execucao: $@"
