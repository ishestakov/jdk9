#!/bin/bash

echo 'Removing binaries'
rm -r ./bin

mkdir bin
mkdir bin/jdk8
mkdir bin/jdk9

echo 'Compiling the sources using JDK#8'
javac -cp 'lib/*' -d bin/jdk8 $(find main/src/ -name *.java)

echo 'Compiling the sources using JDK#9'
/usr/lib/jvm/jdk-9/bin/javac -cp 'lib/*' -d bin/jdk9 $(find main/src/ -name *.java)