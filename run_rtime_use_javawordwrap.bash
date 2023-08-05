bin_path="use_javawordwrap/target/app-1.0-SNAPSHOT.jar"

if [[ -e $bin_path ]]
then
    cat /tmp/sample-$1.txt | java -cp $bin_path com.javawordwrap.App  &>/dev/null

    if [[ ! $? -eq 0 ]]
    then
	echo FAIL!!!
	exit 1
    fi    
else
    echo binary not exist: $bin_path
    exit 2
fi

