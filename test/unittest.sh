#!/bin/sh

export CLASSPATH=.
$JAVA_HOME/bin/javac -g Test.java

rlwrap -C jdb -b ' .' -z ./unittest_filter $JAVA_HOME/bin/jdb Test
