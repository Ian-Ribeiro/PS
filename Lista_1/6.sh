#!/bin/bash

#Perdao pela falta de acentuacao, o debian estava configurado com teclado americano.

echo 'Substituicao de shell: quando e colocado um comando entre $() em um script, e o shell entende que deve substituir o que esta entre os parentesis pela execucao do comando em si.'
echo
echo 'Exemplo 1:'
echo
echo 'A frase: A data de hoje e: $(date +"%d/%m/%y").'
echo "Torna-se: A data de hoje e: $(date +'%d/%m/%y')."
echo
echo 'Exemplo 2:'
echo
echo 'A frase: O diretorio atual e: $(pwd).'
echo "Torna-se: O diretorio atual e: $(pwd)."
echo
echo 'Susbstituicao de variaveis: quando uma variavel e colocada entre ${} em um script, e o shell entende que deve substituir o que esta entre as chaves pelo conteudo da variavel em si.'
echo
X='manha'; Y='noite'
echo 'Exemplo:'
echo
echo 'Supondo que a variavel X = manha e Y = noite:'
echo
echo 'A frase: Eu ja lhe disse que nao e pra ligar o ar condicionado de ${X}, apenas de ${Y}.'
echo "Torna-se: Eu ja lhe disse que nao e pra ligar o ar condicionado de ${X}, apenas de ${Y}."
echo
echo 'Substituicao aritmetica: quando e colocado uma expressao matematica entre $(()) em um script, e o shell entende que deve resolver a expressao que esta entre os parentesis e devolver seu resultado.'
echo
echo 'Exemplo:'
echo
echo '10 + 20 = $(( 10 + 20 )).'
echo "Torna-se: 10 + 20 = $(( 10 + 20 ))."
echo
