#!/bin/bash

read -p 'Informe um endereco IP: ' ip

echo "$ip" | tr '.' '\t' > /tmp/ip

num1=$( cat /tmp/ip | cut -f 1 )
num2=$( cat /tmp/ip | cut -f 2 )
num3=$( cat /tmp/ip | cut -f 3 )
num4=$( cat /tmp/ip | cut -f 4 )

bi1=$( echo "obase=2; ibase=10; ${num1}" | bc )
bi2=$( echo "obase=2; ibase=10; ${num2}" | bc )
bi3=$( echo "obase=2; ibase=10; ${num3}" | bc )
bi4=$( echo "obase=2; ibase=10; ${num4}" | bc )

echo "Octeto 1: ${num1} em binario e ${bi1}"
echo "Octeto 2: ${num2} em binario e ${bi2}"
echo "Octeto 3: ${num3} em binario e ${bi3}"
echo "Octeto 4: ${num4} em binario e ${bi4}"

rm /tmp/ip
