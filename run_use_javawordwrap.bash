
cat /tmp/sample-$1.txt | java -cp use_javawordwrap/target/app-1.0-SNAPSHOT.jar com.javawordwrap.App &>/dev/null

if [[ ! $? -eq 0 ]]
then
    echo FAIL!!!
    exit 1
fi

