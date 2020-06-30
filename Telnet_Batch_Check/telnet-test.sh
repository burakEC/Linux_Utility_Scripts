#!/bin/bash

INPUT=ip-port.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read ip port
do
        timeout 2 bash -c "</dev/tcp/${ip}/${port}" > /dev/null 2>&1
        if [ $? -eq 0 ]
                then
        echo "Server -> $ip Port-> $port accepting connections"
                else
        echo "Server -> $ip Port-> $port connections not possible"
fi
done < $INPUT
IFS=$OLDIFS
