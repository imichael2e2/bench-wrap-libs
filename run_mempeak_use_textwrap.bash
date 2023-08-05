cat /tmp/sample-$1.txt | \
    valgrind \
	--tool=massif \
	--massif-out-file=mempeak-$1-textwrap \
	./use_textwrap/target/release/use_textwrap &>/dev/null

if [[ ! $? -eq 0 ]]
then
    echo mempeak textwrap FAIL!!!
fi
