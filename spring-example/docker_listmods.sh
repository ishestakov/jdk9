#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

JAVA_VERSION=9

JAVA_ARGS="-p /example/target --add-modules com.github.ishestakov.coe -cp 'lib/*:target/resources:mod/*' --list-modules"


docker run -it --rm -v $SCRIPTPATH/target/java$JAVA_VERSION:/example/target/ -v $HOME:$HOME --user `id -u $USER`:`id -g $USER` -e HOME=$HOME  openjdk:$JAVA_VERSION java $JAVA_ARGS
