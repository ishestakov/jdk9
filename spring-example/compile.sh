#!/bin/bash

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Removing binaries"
rm -r "${BASEDIR}/bin"

mkdir "${BASEDIR}/bin"
mkdir "${BASEDIR}/bin/jdk8"
mkdir "${BASEDIR}/bin/jdk9"

echo "Compiling the sources using JDK#8"
/usr/local/java/jdk1.8.0_31/bin/javac -cp "${BASEDIR}/lib/*" -d "${BASEDIR}/bin/jdk8" $(find "${BASEDIR}/main/src/" -name "*.java")

echo "Compiling the sources using JDK#9"
/usr/lib/jvm/jdk-9/bin/javac -cp "${BASEDIR}/lib/*" -d "${BASEDIR}/bin/jdk9" $(find "${BASEDIR}/main/src/" -name "*.java")
