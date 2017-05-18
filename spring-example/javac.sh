#!/bin/bash
javac -verbose -cp "/example/lib/*" -d "/example/target/classes" $(find "/example/main/src/" -name "*.java")
