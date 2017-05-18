#!/bin/bash
javac -verbose --add-reads com.github.ishestakov.coe=ALL-UNNAMED -cp "/example/lib/*:/example/mod/*" -d "/example/target/com.github.ishestakov.coe" $(find "/example/main/src/" -name "*.java")

