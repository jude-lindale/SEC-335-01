#!/bin/bash

hostfile=$1
portfile=$2
for host in $(cat $hostfile); do
	for port in $(cat $portfile); do
# simply changed code to run and if statment that tells you if there was an error if the host and port are up
		if timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo;then
			echo "$host:$port is up"
		else
			echo "Error has occured with $host:$port"

		fi
	done
done

