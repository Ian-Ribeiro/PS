#!/bin/bash

awk '{print $1}' < downloads.txt | sort -u > /tmp/usuarios
parametros=$(cat /tmp/usuarios | tr '\n' ' ')
linhas=$(cat /tmp/usuarios | wc -l)

for i in $parametros; do
	grep "$i" downloads.txt | awk '{n+=$3} END {print n}' >> /tmp/somas
done

for i in $(seq 1 $linhas | tr '\n' ' '); do
	echo "O usuario $(awk "NR==$i" < /tmp/usuarios) totalizou $(awk "NR==$i" < /tmp/somas) em downloads."
done

rm /tmp/usuarios /tmp/somas
