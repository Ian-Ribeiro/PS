#!/bin/bash

x=0
while [ $x -eq 0 ]; do

	ps aux > /tmp/ps

	awk '{print $1" "$2" "$3" "$4" "$8" "$9" "$10" "$11}' < /tmp/ps | tr ' ' '\t' | sed ' 1d' > /tmp/procs

	proc_escolhido=$(zenity --list --title="Gerenciador de Tarefas"\
        --column="User" --column="PID" --column="CPU" --column="MEM" --column="Stat" --column="Start" --column="Time" --column="Command"\
        --separator="\t" --print-column="ALL" $(cat /tmp/procs) --width="700" --height="1000")

	zenity --title "Kill?" --question --text="Deseja matar o processo escolhido?" --width="300" --height="100"

	case $? in
		0)
			PID=$(echo "$proc_escolhido" | awk '{print $2}')
			$(kill -9 $PID)
	esac

	zenity --title "Continuar?" --question --text="Deseja continuar utilizando o gerenciador de tarefas?" --width="300" --height="100"

	case $? in
		1)
			x=1
	esac

	rm /tmp/ps /tmp/procs
done
