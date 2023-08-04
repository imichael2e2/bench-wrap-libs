
N_SAMPLE=30


function bench_rtime() {
    TIMEFORMAT=%R

    what_lib=$1
    echo "rtime benching $what_lib..."
    
    realtimes_result="rtime-use_$what_lib.log"
    if [[ -e $realtimes_result ]]
    then
	rm -f $realtimes_result
    fi

    for i in $(seq 1 $N_SAMPLE)
    do
	sleep 3s
	alltimes_output=$({ time bash run_use_$what_lib.bash $i; } 2>&1)
	echo "$alltimes_output" >>$realtimes_result
    done
}

# corresponds to use_XXX
# bench_rtime "textwrap"
# bench_rtime "asap-textwrap"
# bench_rtime "textflowcpp"
# bench_rtime "bwrap_easy"
bench_rtime "javawordwrap"
