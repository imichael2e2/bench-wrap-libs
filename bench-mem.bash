
N_SAMPLE=30


function bench_mempeak() {
    what_lib="$1"
    echo "mem benching $what_lib..."

    mempeak_result="mempeak-use_$what_lib.log"
    
    if [[ -e $mempeak_result ]]
    then
	rm -f $mempeak_result
    fi

    for i in $(seq 1 $N_SAMPLE)
    do
	sleep 3s;
	cat /tmp/sample-$i.txt | LD_LIBRARY_PATH=/home/mic/tmpp/asap-textwrap/build/bin valgrind \
			     --tool=massif \
			     --massif-out-file=mempeak-$i-$what_lib \
			     ./use_$what_lib/a.out &>/dev/null
	if [[ ! $? -eq 0 ]]
	then
	    echo $what_lib FAIL!!!
	fi
	mempeak_output=$(cat mempeak-$i-$what_lib | grep heap_tree=peak -B 5 | grep mem_heap_B= | sed 's/mem_heap_B=//')
	echo "$mempeak_output" >>$mempeak_result
	rm -f mempeak-$i-$what_lib
    done

}

# corresponds to use_XXX
bench_mempeak "textwrap"
bench_mempeak "textflowcpp"
bench_mempeak "bwrap_easy"
# bench_mempeak "asap-textwrap"
