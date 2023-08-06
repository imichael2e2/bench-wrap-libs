
# del old
rm -f /tmp/sample-*.txt

for i in {1..10}
do
    cat /dev/random | tr -dc 'abcde[= =]' | head -c $((i*1024*512)) >/tmp/sample-$i.txt
done
