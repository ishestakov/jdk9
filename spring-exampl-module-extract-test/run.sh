#!/bin/bash

/usr/lib/jvm/jdk-9/bin/java -mp 'mod:bin/mods:main/resources' -addmods spring.core,spring.aop,spring.expression -cp './lib/*:main/resources' -m com.github.ishestakov.coe.pass.app/com.github.ishestakov.coe.Main
