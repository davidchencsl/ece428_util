#!/bin/bash

i=$1

if [ -z "$i" ]
then
    echo "Please provide a command or script!"
    exit 1
fi

echo "Connecting to VM $i"
    sshpass -p "Csl5432112345" \
    ssh -o StrictHostKeyChecking=no \
    sc60@fa22-cs425-35$i.cs.illinois.edu $2