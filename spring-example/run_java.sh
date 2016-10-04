#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

JAVA_VERSION=$1;

#if [ JAVA_VERSION eq 8 ]; then
#	docker run -it  -v $SCRIPTPATH:/example -v $SCRIPTPATH/bin/java$JAVA_VERSION:/example/bin java:$JAVA_VERSION java -cp '/example/lib/*:/example/bin/:/example/main/resources' com.github.ishestakov.coe.Main
#else if [ JAVA_VERSION eq 9 ]; then
#	docker run -it  -v $SCRIPTPATH:/example -v $SCRIPTPATH/bin/java$JAVA_VERSION:/example/bin java:$JAVA_VERSION java -cp '/example/lib/*:/example/bin/:/example/main/resources' com.github.ishestakov.coe.Main
#fi

docker run -it  -v $SCRIPTPATH:/example -v $SCRIPTPATH/bin/java$JAVA_VERSION:/example/bin java:$JAVA_VERSION java -cp '/example/lib/*:/example/bin/:/example/main/resources' $JAVA_SPEC_ARGS com.github.ishestakov.coe.Main
	


