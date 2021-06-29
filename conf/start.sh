#!/bin/sh
#
# Author: Jan Souza (jangs@br.ibm.com)
# Date: 12/18/2020
# Description: Start/Stop SpringBoot App
#

APP=$1
APP_HOME=/app

#Java Options
JAVA_OPTS="-server -Xms256m -Xmx256m -Dfile.encoding=UTF-8 -XX:+UseG1GC -XX:MaxGCPauseMillis=250 -XX:+DisableExplicitGC -XX:+UseLargePages -XX:+AggressiveOpts"

#GCC Log
JAVA_OPTS="$JAVA_OPTS -verbose:gc -Xloggc:$APP_HOME/logs/gc.log -XX:+PrintGC -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintGCApplicationStoppedTime -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=64 -XX:GCLogFileSize=32M"

#Heap dump
JAVA_OPTS="$JAVA_OPTS -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=$APP_HOME/dumps/"

#Tomcat
JAVA_OPTS="$JAVA_OPTS -Dserver.connection-timeout=10000"

java $JAVA_OPTS -jar $APP_HOME/$APP.jar --spring.config.location=$APP_HOME/application.properties
