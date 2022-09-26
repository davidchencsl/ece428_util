for i in {1..10}
do
    vm_num=`printf "%02d" $i`
    echo "Copying VM $vm_num"
    sshpass -p "Csl5432112345" \
    scp -o StrictHostKeyChecking=no -r \
    ${1//"#@"/$i} sc60@fa22-cs425-35$vm_num.cs.illinois.edu:${2//"#@"/$i} &
done

exit 0