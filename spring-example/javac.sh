#!/bin/bash
rm -rf /example/bin/*.class
javac -verbose -cp "/example/lib/*" -d "/example/target/classes" $(find "/example/main/src/" -name "*.java")
