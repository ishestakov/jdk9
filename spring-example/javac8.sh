#!/bin/bash

javac -verbose -cp "/example/lib/*:/example/mod/*" -d "/example/target/classes" $(find "/example/main/src/" -name "*.java" ! -name "module-info.java")
