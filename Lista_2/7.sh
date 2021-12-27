#!/bin/bash

read -p "Digite quatro numeros que possuam mais de uma casa decimal: " x y z o
aux=$x

for i in $y $z $o; do
	test=$(echo "$i < $aux" | bc)
	if [ $test -eq 1 ]; then
		aux=$i
	fi
done

echo "O menor numero e: ${aux}"
