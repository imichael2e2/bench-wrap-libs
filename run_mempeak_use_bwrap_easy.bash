cat /tmp/sample-$1.txt | \
    valgrind \
	--tool=massif \
	--massif-out-file=mempeak-$1-bwrap_easy \
	./use_bwrap_easy/target/release/use_bwrap_easy &>/dev/null

if [[ ! $? -eq 0 ]]
then
    echo mempeak bwrap_easy FAIL!!!
fi
