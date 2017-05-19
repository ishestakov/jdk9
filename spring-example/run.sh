#!/bin/bash

/usr/lib/jvm/jdk-9/bin/java -XaddReads:com.github.ishestakov.coe.pass.app=ALL-UNNAMED -cp 'lib/*:mod/*:main/resources' -mp 'bin/mods' -m com.github.ishestakov.coe.pass.app/com.github.ishestakov.coe.Main