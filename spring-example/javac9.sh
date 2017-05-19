#!/bin/bash
javac -verbose --add-reads com.github.ishestakov.coe.pass.app=ALL-UNNAMED -cp '/example/lib/*:/example/mod/*' -d /example/target/mods --module-source-path '/example/main/src' $(find /example/main/src/ -name '*.java')
