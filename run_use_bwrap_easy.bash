
cat /tmp/gpl-$1.txt | ./use_bwrap_easy/target/release/use_bwrap &>/dev/null

if [[ ! $? -eq 0 ]]
then
    echo FAIL!!!
    exit 1
fi

