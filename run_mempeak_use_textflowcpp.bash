cat /tmp/sample-$1.txt | \
    valgrind \
	--tool=massif \
	--massif-out-file=mempeak-$1-textflowcpp \
	./use_textflowcpp/a.out &>/dev/null

if [[ ! $? -eq 0 ]]
then
    echo mempeak textflowcpp FAIL!!!
fi
