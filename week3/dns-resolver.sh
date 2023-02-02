#!/bin/bash

prefix=$1
dns=$2


echo "DNS Resolver for $1"
for i in $(seq 1 254); do
	sudo nslookup "$prefix.$i" "$dns" | grep "name"

done
