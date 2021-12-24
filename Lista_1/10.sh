#!/bin/bash

a=$1
b=$2

echo "O resultado da expressao (a+1) * (b+2) e: $(awk "BEGIN { print ($a+1) * ($b+2) }")"
