#!/bin/bash

data=$(date +"%T-%d-%m-%y")

mkdir /home/$data
cp -r ./ /home/$data


