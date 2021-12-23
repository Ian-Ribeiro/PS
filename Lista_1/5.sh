#!/bin/bash

data=$(date +"%H--%M--%S-%d-%m-%y")
dir=$(pwd)

mkdir /home/${data}
cp -r ./ /home/${data}

cd /home
tar -czf ${data}.tar.gz ${data}
rm -r ${data}
cp -r ./${data}.tar.gz ${dir}
cd ${dir}
