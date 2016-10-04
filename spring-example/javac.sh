#!/bin/bash
rm -rf /example/bin/*.class
ls -la /example/mod
javac -verbose --add-reads com.github.ishestakov.coe=ALL-UNNAMED -cp "/example/lib/*:/example/mod/*" -d "/example/bin/com.github.ishestakov.coe" $(find "/example/main/src/" -name "*.java")
