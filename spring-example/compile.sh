#!/bin/bash

echo 'Removin binaries'

rm -r ./bin
mkdir bin
mkdir bin/com.github.ishestakov.coe

/usr/lib/jvm/jdk-9/bin/javac -cp 'lib/*:mod/*' -d bin/com.github.ishestakov.coe $(find main/src/ -name *.java)

#/usr/lib/jvm/jdk-9/bin/javac -cp 'lib/*' -p 'mod' -d bin/com.github.ishestakov.coe $(find main/src/ -name *.java)


