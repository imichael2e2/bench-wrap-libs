
bin_path="./use_bwrap_easy/target/release/use_bwrap_easy"

if [[ -e $bin_path ]]
then
    cat /tmp/sample-$1.txt | $bin_path &>/dev/null

    if [[ ! $? -eq 0 ]]
    then
	echo FAIL!!!
	exit 1
    fi    
else
    echo binary not exist: $bin_path
    exit 2
fi


