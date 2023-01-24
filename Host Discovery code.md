Ping: 
```
bash
for i in $(seq 1 50)
do
    echo "10.0.5."$1
    ping -c 1 10.0.5.$i | grep "64 bytes"
done
```

fping:
```
fping -q -a -g 10.0.5.2 10.0.5.50 > sweepfping.txt
```

Nmap scan 10.0.5.21:
```
nmap -sn 10.0.5.21
```

Nmap 10.0.5.2-50:
```
nmap -sn -oG - 10.0.5.2-50 | grep Up | cut -d ' ' -f 2 > sweep5.txt
```
