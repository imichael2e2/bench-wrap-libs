
cat /tmp/gpl-$1.txt | ./use_textwrap/target/release/use_textwrap &>/dev/null

if [[ ! $? -eq 0 ]]
then
    echo FAIL!!!
    exit 1
fi

