#!/bin/bash
echo 'Cleaning the binaries'

rm -r bin

echo 'Compiling modules'
/usr/lib/jvm/jdk-9/bin/javac -d bin/mods -mp 'mod' -modulesourcepath 'main/src' $(find main/src/ -name '*.java')
