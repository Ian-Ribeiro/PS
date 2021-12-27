#!/bin/bash

a=$1
b=$2

for (( i=$(($a+1)); i<$b; i++ )); do
	resto=$(( $i % 2 ))
	if [ $resto -eq 1 ]; then
		echo "$i"
	fi
done
