#!/bin/bash

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${BASEDIR}

/usr/lib/jvm/jdk-9/bin/java -cp 'lib/*:bin/jdk9:main/resources' com.github.ishestakov.coe.Main
