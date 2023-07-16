
cat /tmp/sample-$1.txt | ./use_textwrap/a.out &>/dev/null

if [[ ! $? -eq 0 ]]
then
    echo FAIL!!!
    exit 1
fi

