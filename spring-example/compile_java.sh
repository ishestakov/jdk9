#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

echo $1

JAVA_VERSION=$1

if [ ! -d $SCRIPTPATH/bin ]; then
	mkdir $SCRIPTPATH/bin
fi
if [ ! -d $SCRIPTPATH/bin/java8 ]; then
	mkdir $SCRIPTPATH/bin/java$JAVA_VERSION
fi



docker run -it -v $SCRIPTPATH:/example -v $SCRIPTPATH/bin/java$JAVA_VERSION:/example/bin/ -v $HOME:$HOME --user `id -u $USER`:`id -g $USER` -e HOME=$HOME  java:$JAVA_VERSION /bin/bash /example/javac.sh
