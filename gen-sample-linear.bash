
# del old
rm -f /tmp/sample-*.txt

for i in {1..30}
do
    cat /dev/random | tr -dc 'abcde[= =]' | head -c $((i*1024*32)) >/tmp/sample-$i.txt
done
