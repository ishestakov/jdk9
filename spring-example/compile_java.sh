#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'

JAVA_VERSION=$1

function printUsage {
	echo "Call $0 [java_version]$"
	echo "java_version - The java version to use for compilation ([8|9])"
}

function clear {
	echo -e "${GREEN}Cleaning the build${NC}"
	rm -r -v $SCRIPTPATH/target/java$JAVA_VERSION
}

function prepare {
	echo -e "${GREEN} Prepare output structure${NC}"
	if [ ! -d $SCRIPTPATH/target ]; then
		mkdir -v $SCRIPTPATH/target
	fi
	if [ ! -d $SCRIPTPATH/target/java$JAVA_VERSION ]; then
		mkdir -v $SCRIPTPATH/target/java$JAVA_VERSION
	fi
	if [ ! -d $SCRIPTPATH/target/java$JAVA_VERSION/classes ]; then
		mkdir -v $SCRIPTPATH/target/java$JAVA_VERSION/classes
	fi
}

function compile {
	echo -e "${GREEN} Compiling sources ${NC}"
	docker run -it --rm -v $SCRIPTPATH:/example -v $SCRIPTPATH/target/java$JAVA_VERSION:/example/target/ -v $HOME:$HOME --user `id -u $USER`:`id -g $USER` -e HOME=$HOME  openjdk:$JAVA_VERSION /bin/bash /example/javac.sh
}

function resources {
	echo -e "${GREEN}Processing resources${NC}"
	cp -r -v $SCRIPTPATH/main/resources $SCRIPTPATH/target/java$JAVA_VERSION/
}

if [ ! -z $JAVA_VERSION ]; then
	clear;
	prepare;
	compile;
	resources;
else
	printUsage;
fi

