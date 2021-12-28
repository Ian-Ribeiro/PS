#!/bin/bash

tr ' ' '.' < Ranking.txt | awk '{print $1}' | tr '.' ' ' > Ranking_Meninos.txt
tr ' ' '.' < Ranking.txt | awk '{print $2}' | tr '.' ' ' > Ranking_Meninas.txt
