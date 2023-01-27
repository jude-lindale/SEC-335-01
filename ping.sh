#!/bin/bash
for i in $(seq 1 50)
do
	echo "10.0.5."$i
	ping -c 1 10.0.5.$i | grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}[0-9]{1.3}'
done
