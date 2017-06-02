#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

JAVA_VERSION=9;

docker run -it --rm  -v $SCRIPTPATH/lib:/example/lib -v $SCRIPTPATH/mod/:/example/mod -v $SCRIPTPATH/target/:/example/target openjdk:$JAVA_VERSION java --add-reads com.github.ishestakov.coe.pass.app=ALL-UNNAMED --add-modules com.github.ishestakov.coe.pass.generator.impl -cp '/example/lib/*:/example/target/mods/resources' -p '/example/target/mods:/example/mod' -m com.github.ishestakov.coe.pass.app/com.github.ishestakov.coe.Main
