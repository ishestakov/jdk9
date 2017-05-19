#!/bin/bash
echo 'Cleaning the binaries'

rm -r bin

echo 'Compiling modules'
/usr/lib/jvm/jdk-9/bin/javac -d bin/mods -modulesourcepath 'main/src' $(find main/src/ -name '*.java')

echo 'Compiling module com.github.ishestkaov.coe.pass.app'
/usr/lib/jvm/jdk-9/bin/javac -cp 'lib/*:mod/*' -mp 'bin/mods' -d 'bin/mods/com.github.ishestakov.coe.pass.app' $(find ./com.github.ishestakov.coe.pass.app -name '*.java')