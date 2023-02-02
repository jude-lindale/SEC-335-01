#!/bin/bash

#Code/Script Credit: Devin Paden or Mackenzie Marsocci


prefix=$1
port=$2

echo "ip,port"
for i in $(seq 1 254); do
    timeout .1 bash -c "echo >/dev/tcp/$prefix.$i/$port" 2>/dev/null &&
      echo "$prefix.$i,$port"
done
