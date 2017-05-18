#!/bin/bash
rm -rf /example/target/java9/**/*.class

javac -verbose --add-reads com.github.ishestakov.coe=ALL-UNNAMED -cp "/example/lib/*:/example/mod/*" -d "/example/target/java9/com.github.ishestakov.coe" $(find "/example/main/src/" -name "*.java")

