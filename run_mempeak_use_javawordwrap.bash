cat /tmp/sample-$1.txt | \
    valgrind \
	--tool=massif \
	--massif-out-file=mempeak-$1-javawordwrap \
        java -cp use_javawordwrap/target/app-1.0-SNAPSHOT.jar com.javawordwrap.App &>/dev/null

if [[ ! $? -eq 0 ]]
then
    echo mempeak javawordwrap FAIL!!!
fi
