rm -f /tmp/gpl-*.txt

for i in {1..30}
do
    cat /dev/random | tr -dc 'abcde[:blank:]' | head -c $((i*1024*32)) >/tmp/gpl-$i.txt
done
