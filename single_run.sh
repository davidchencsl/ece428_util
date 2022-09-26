#!/bin/bash

input=$1

for i in {1..10}
do
    vm_num=`printf "%02d" $i`
    echo "Running VM $vm_num"
    sshpass -p "Csl5432112345" \
    ssh -o StrictHostKeyChecking=no \
    sc60@fa22-cs425-35$vm_num.cs.illinois.edu $input
done