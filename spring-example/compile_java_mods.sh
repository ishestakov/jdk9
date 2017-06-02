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
	rm -r -v $SCRIPTPATH/target/
}

function prepare {
	echo -e "${GREEN} Prepare output structure${NC}"
	if [ ! -d $SCRIPTPATH/target ]; then
		mkdir -v $SCRIPTPATH/target
		mkdir -v $SCRIPTPATH/target/mods
	fi
}

function compile {
	echo -e "${GREEN} Compiling sources ${NC}"
	docker run -it --rm -v $SCRIPTPATH:/example -v $SCRIPTPATH/target/:/example/target/ -v $HOME:$HOME --user `id -u $USER`:`id -g $USER` -e HOME=$HOME  openjdk:$JAVA_VERSION /bin/bash /example/javac${JAVA_VERSION}_mod.sh
}

function resources {
	echo -e "${GREEN}Processing resources${NC}"
	cp -r -v $SCRIPTPATH/main/resources $SCRIPTPATH/target/mods/
}

if [ ! -z $JAVA_VERSION ]; then
	clear;
	prepare;
	compile;
	resources;
else
	printUsage;
fi

