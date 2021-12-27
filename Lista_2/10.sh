#!/bin/bash

fc=1

for i in $@; do
	if [ -f $i ]; then
		echo "$i SIM"
	else
		echo "$i NAO"
		fc=0
	fi
done

if [ $fc -eq 1 ]; then
	echo 'Acertou miseravi :D'
fi

