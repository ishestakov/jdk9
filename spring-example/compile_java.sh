#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

echo $1

JAVA_VERSION=$1

if [ ! -d $SCRIPTPATH/target ]; then
	mkdir $SCRIPTPATH/target
fi
if [ ! -d $SCRIPTPATH/target/java$JAVA_VERSION ]; then
	mkdir $SCRIPTPATH/target/java$JAVA_VERSION
fi

echo 'Compiling sources'
docker run -it --rm -v $SCRIPTPATH:/example -v $HOME:$HOME --user `id -u $USER`:`id -g $USER` -e HOME=$HOME "openjdk:$JAVA_VERSION" /bin/bash /example/javac$JAVA_VERSION.sh

echo 'Processing resources'
cp -v -r $SCRIPTPATH/main/resources $SCRIPTPATH/target/java$JAVA_VERSION/resources