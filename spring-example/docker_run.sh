#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

JAVA_VERSION=9

JAVA_ARGS="--add-reads com.github.ishestakov.coe=ALL-UNNAMED -cp /example/lib/*:/example/target/resources/:/example/mod/* -p /example/target -m com.github.ishestakov.coe/com.github.ishestakov.coe.Main"


docker run -it --rm -v $SCRIPTPATH:/example -v $SCRIPTPATH/target/java$JAVA_VERSION:/example/target/ -v $HOME:$HOME --user `id -u $USER`:`id -g $USER` -e HOME=$HOME  openjdk:$JAVA_VERSION java $JAVA_ARGS
