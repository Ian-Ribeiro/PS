#!/bin/bash

echo "DIRS"

for i in *; do
	if $([ -d $i ]); then
		echo "$i"
	fi
done

echo
echo "FILES"

for i in *; do
	if $([ -f $i -a ! -h $i ]); then
		echo "$i"
	fi
done

echo
echo 'LINKS'

for i in *; do
	if $([ -h $i ]); then
		echo "$i"
	fi
done
