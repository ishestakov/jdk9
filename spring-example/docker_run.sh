#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

JAVA_VERSION=9

JAVA_ARGS="--add-reads com.github.ishestakov.coe=ALL-UNNAMED -cp /example/lib/*:/example/main/resources/:/example/mod/* -p /example/bin -m com.github.ishestakov.coe/com.github.ishestakov.coe.Main"


docker run -it -v $SCRIPTPATH:/example -v $SCRIPTPATH/bin/java$JAVA_VERSION:/example/bin/ -v $HOME:$HOME --user `id -u $USER`:`id -g $USER` -e HOME=$HOME  java:$JAVA_VERSION java $JAVA_ARGS
