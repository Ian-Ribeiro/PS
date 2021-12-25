#!/bin/bash

larq=$(cat $1 | wc -l)

if $([ ! -f $1 ]); then
	echo 'BAD'
elif $([ $larq -gt 3 ]); then
	echo 'BAD'
else
	echo "O nome do arquivo e: $1."
	echo "Sua ultima linha diz: $(tail -n 1 $1)"
fi
