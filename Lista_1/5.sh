#!/bin/bash

#Aconteceu um bug que estava me impedindo de compactar o diretorio se o ":" estivesse separando as horas, por isso optei por separa-las com dois "-".

data=$(date +"%H--%M--%S-%d-%m-%y")
dir=$(pwd)

mkdir /home/${data}
cp -r ./ /home/${data}

cd /home
tar -czf ${data}.tar.gz ${data}
rm -r ${data}
cp -r ./${data}.tar.gz ${dir}
cd ${dir}
