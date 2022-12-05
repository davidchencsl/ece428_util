#!/bin/bash
if [ $# -ge 2 ]
then
    start=$2
    end=$3
else
    start=1
    end=10
fi

input=$1

for i in $(seq $start $end)
do
    vm_num=`printf "%02d" $i`
    echo "Running VM $vm_num"
    sshpass -p "Csl5432112345" \
    ssh -o StrictHostKeyChecking=no \
    sc60@fa22-cs425-35$vm_num.cs.illinois.edu $input
    sleep 5
done