
# del old
rm -f /tmp/sample-*.txt

for i in {1..50}
do
    cat /dev/random | tr -dc 'abcde[= =]' | head -c $((i*1024*100)) >/tmp/sample-$i.txt
done
