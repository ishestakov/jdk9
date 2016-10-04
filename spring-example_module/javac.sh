#!/bin/bash
rm -rf /example/bin/*.class
javac -verbose -cp "/example/lib/*" -d "/example/bin" $(find "/example/main/src/" -name "*.java")
