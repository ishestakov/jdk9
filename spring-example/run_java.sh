#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

JAVA_VERSION=$1;

docker run -it --rm -v $SCRIPTPATH/lib/:/example/lib -v $SCRIPTPATH/target/java$JAVA_VERSION:/example/target openjdk:$JAVA_VERSION java -cp '/example/lib/*:/example/target/classes:/example/target/resources' com.github.ishestakov.coe.Main
	


