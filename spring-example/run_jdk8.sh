#!/bin/bash

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${BASEDIR}

/usr/local/java/jdk1.8.0_31/bin/java -cp 'lib/*:bin/jdk8:main/resources' com.github.ishestakov.coe.Main
