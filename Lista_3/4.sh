#!/bin/bash

#$1 = opcao que indica o que listar
#$2 = opcao que indica a pasta para listar

echo "DIRS"

for i in $2*; do
	if [ -d $i ]; then
		echo "$i"
	fi
done

echo "FILES"

for i in $2; do
	if [ -f $i -a ! -h $i ]; then
		echo "$i"
	fi
done

echo 'LINKS'

for i in $2; do
	if [ -h $i ]; then
		echo "$i"
	fi
done
