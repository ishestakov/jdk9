#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

JAVA_VERSION=9

JAVA_ARGS="-p /example/bin --add-modules com.github.ishestakov.coe -cp 'lib/*:main/resources:mod/*' --list-modules"


docker run -it -v $SCRIPTPATH:/example -v $SCRIPTPATH/bin/java$JAVA_VERSION:/example/bin/ -v $HOME:$HOME --user `id -u $USER`:`id -g $USER` -e HOME=$HOME  java:$JAVA_VERSION java $JAVA_ARGS
