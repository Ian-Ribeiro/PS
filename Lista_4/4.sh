#!/bin/bash

read -p "Digite o caminho do arquivo o qual deseja censurar todos os enderecos IPs: " arq

echo "$(cat ${arq} | sed 's/[0-9]*.[0-9]*.[0-9]*.[0-9]*/**!!CENSU--RADO!!**/g')"
