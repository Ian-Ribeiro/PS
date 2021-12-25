#!/bin/bash

ls $1 &> /dev/null && ls $1 >> ok.log || ls $1 2>> erro.log
ls $2 &> /dev/null && ls $2 >> ok.log || ls $2 2>> erro.log
ls $3 &> /dev/null && ls $3 >> ok.log || ls $3 2>> erro.log
