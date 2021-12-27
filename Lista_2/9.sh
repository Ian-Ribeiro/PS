#!/bin/bash

read -p "Digite dois numeros: " a b

a=$(($a+1))

for (( i=$a; i<$b; i++ )); do
	soma=$((soma+$i))
done

echo "${soma}"
