#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

JAVA_VERSION=$1;

if [ $JAVA_VERSION -eq "8" ]; then
	docker run -it --rm -v $SCRIPTPATH/lib/:/example/lib -v $SCRIPTPATH/mod/:/example/mod -v $SCRIPTPATH/target/java$JAVA_VERSION:/example/target openjdk:$JAVA_VERSION java -cp '/example/lib/*:/example/mod/*:/example/target/:/example/target/resources' com.github.ishestakov.coe.Main
else
	if [ $JAVA_VERSION -eq "9" ]; then
		docker run -it --rm  -v $SCRIPTPATH/lib:/example/lib -v $SCRIPTPATH/mod/:/example/mod -v $SCRIPTPATH/target/java$JAVA_VERSION:/example/target openjdk:$JAVA_VERSION java -cp '/example/lib/*:/example/mod/*:/example/target/com.github.ishestakov.coe/:/example/target/resources' com.github.ishestakov.coe.Main
	fi
fi