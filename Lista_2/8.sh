#!/bin/bash

for i in {0..108}; do
	resto=$(( $i % 2 ))
	if [ $resto -eq 1 ]; then
		echo "${i}"
	fi
done
