#!/bin/bash
rm -rf /example/target/java8/*.class

javac -verbose -cp "/example/lib/*:/example/mod/*" -d "/example/target/java8/" $(find "/example/main/src/" -name "*.java" ! -name "module-info.java")
