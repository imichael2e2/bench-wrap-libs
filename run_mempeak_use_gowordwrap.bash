cat /tmp/sample-$1.txt | \
    valgrind \
	--tool=massif \
	--massif-out-file=mempeak-$1-gowordwrap \
	./use_gowordwrap/a.out &>/dev/null

if [[ ! $? -eq 0 ]]
then
    echo mempeak gowordwrap FAIL!!!
fi
