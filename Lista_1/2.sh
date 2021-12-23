#!/bin/bash

read -p 'Digite o primeiro diretorio:' x
read -p 'Digite o segundo diretorio:' y
read -p 'Digite o terceiro diretorio:' z
read -p 'Digite o quarto diretorio:' o

ls ${x} >> out.txt
ls ${y} >> out.txt
ls ${z} >> out.txt
ls ${o} >> out.txt
