#!/bin/bash

#imprimir redirecionador
#explicacao sobre funcionamento
#exemplo util

echo 'Redirecionador >'
echo
echo 'Redireciona a saida de um comando que deu certo para um arquivo. Deleta todo o conteudo deste arquivo, caso haja, e substitui pela saida do comando sendo redirecionado. Ou cria o arquivo caso este nao exista anteriormente.'
echo
echo 'Exemplo: "ls > 1.txt" Salva no arquivo 1.txt a listagem do diretorio atual, criando-o ou substituindo-o.'
echo
echo
echo 'Redirecionador >>'
echo
echo 'Redireciona a saida de um comando que deu certo para um arquivo. Comeca a escrever o conteudo a partir da ultima linha do arquivo, caso ja exista, e caso nao, cria o arquivo.'
echo
echo 'Exemplo: "ls >> 1.txt" Salva no final do arquivo 1.txt a listagem do diretorio atual, ou o cria.'
echo
echo
echo 'Redirecionador 2>'
echo
echo 'Redireciona a saida de um comando que deu errado para um arquivo. Deleta todo o conteudo deste arquivo, caso haja, e substitui pela saida redirecionada. Ou cria o arquivo caso nao exista.'
echo
echo 'Exemplo: "./script.sh 2> erro.log" Salva no arquivo erro.log os erros gerados pelo script script.sh.'
echo
echo
echo 'Redirecionador 2>>'
echo
echo 'Redireciona a saida de um comando que deu errado para um arquivo, escrevendo seu conteudo a partir da ultima linha do arquivo, caso exista previamente, ou cria o arquivo.'
echo
echo 'Exemplo: "./script7.sh 2>> erros.log" Salva no fim do arquivo erros.log os erros gerados pelo script7.sh'
echo
echo
echo 'Redirecionador &>'
echo
echo 'Redireciona tanto os erros quanto os acertos de um comando para um arquivo. Substituindo o que ha nele, caso exista, ou criando o arquivo, caso nao.'
echo
echo 'Exemplo: "./testes.sh &> resultados.log" Cria ou substitui o arquivo resultados.log e nele salva tanto os erros como os acertos do script testes.sh.'
echo
echo
echo 'Redirecionador &>>'
echo
echo 'Redireciona tanto os erros quantos os acertos de um comando para o fim de um arquivo, caso ja exista, ou o cria, caso nao.'
echo
echo 'Exemplo: "./pings.sh &>> servidores_status.log" Adiciona ao fim do arquivo servidores_status.log tanto os erros como acertos de pings.sh, ou o cria se ja nao existir.'
echo
echo
echo 'Redirecionador <'
echo
echo 'Redireciona a entrada de um comando para um arquivo ou comando ja pre-escrito com esta entrada.'
echo
echo 'Exemplo: "./checagem.sh < items_para_checar.txt" Os parametros escritos em items_para_checar.txt serao utilizados como entrada do script checagem.sh.'
echo
echo
echo 'Redirecionador <<'
echo
echo 'Redireciona a entrada para um arquivo que sera digitado logo apos a confirmacao do comando, ate que o parametro de termino seja digitado.'
echo
echo 'Exemplo: "./5.sh << 'fim'" O usuario ira digitar o arquivo a ser levado em consideracao como entrada para o script 5.sh ate que digite fim.'
echo
echo
echo 'Redirecionador <<<'
echo
echo 'Redireciona a entrada para uma string que sera escrita ao lado de imediato.'
echo
echo 'Exemplo: "./5.sh <<< "1.sh" "2.sh" "3.sh" "4.sh" " Os arquivos *.sh serao utilizados como parametro de entrada para o script 5.sh.'
echo
echo
echo 'Redirecionador |'
echo
echo 'Redireciona a saida de um comando para a entrada de outro.'
echo
echo 'Exemplo: "cat 5.sh | wc -l" A saida do comando cat sera utilizada como entrada para o comando wc.'
echo
