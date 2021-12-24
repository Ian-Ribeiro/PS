#!/bin/bash

x=$(cat $1 | wc -l)
y=$(cat $2 | wc -l)
z=$(cat $3 | wc -l)

echo "A soma de linhas dos 3 arquivos e: $((x+y+z))."
