#!/bin/bash

#/usr/lib/jvm/jdk-9/bin//java -cp 'lib/*:main/resources:mod/*' -mp 'bin' -m com.github.ishestakov.coe/com.github.ishestakov.coe.Main

/usr/lib/jvm/jdk-9/bin//java -XaddReads:com.github.ishestakov.coe=ALL-UNNAMED -cp 'lib/*:main/resources:mod/*' -mp 'bin' -m com.github.ishestakov.coe/com.github.ishestakov.coe.Main

#/usr/lib/jvm/jdk-9/bin/java -cp 'lib/*:main/resources' -mp 'mod/*:bin' -m com.github.ishestakov.coe/com.github.ishestakov.coe.Main


