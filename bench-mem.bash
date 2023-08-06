
N_SAMPLE=50


function bench_mempeak() {
    what_lib="$1"
    echo "mem benching $what_lib..."

    mempeak_result="reslog-mempeak-use_$what_lib.log"
    
    if [[ -e $mempeak_result ]]
    then
	rm -f $mempeak_result
    fi

    for i in $(seq 1 $N_SAMPLE)
    do
	sleep 3s;
	
	bash run_mempeak_use_$what_lib.bash $i
	
	mempeak_output=$(cat mempeak-$i-$what_lib | grep heap_tree=peak -B 5 | grep mem_heap_B= | sed 's/mem_heap_B=//')
	echo "$mempeak_output" >>$mempeak_result

	# delete valgrind single result
	rm -f mempeak-$i-$what_lib
    done

}

# corresponds to use_XXX
bench_mempeak "textwrap"
bench_mempeak "textflowcpp"
bench_mempeak "bwrap_easy"
# bench_mempeak "gowordwrap" # go does not use malloc/free
# bench_mempeak "javawordwrap" # jvm use way too much memory
