#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

MODULE_SUFFIX=$1
JAVA_VERSION=9


JAVA_ARGS="-p /example/target/mods --add-modules com.github.ishestakov.coe.pass.$MODULE_SUFFIX -cp '/example/lib/*:/example/target/resources:/example/mod/*' --list-modules "


docker run -it --rm -v $SCRIPTPATH/target/:/example/target/ -v $HOME:$HOME --user `id -u $USER`:`id -g $USER` -e HOME=$HOME  openjdk:$JAVA_VERSION java $JAVA_ARGS
