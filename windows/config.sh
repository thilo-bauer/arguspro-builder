#!/bin/bash

#####################################
# Auto-generated file. Do not edit.
#####################################
export APP_NAME="Archibald.app"
export VERSION="11.0.2623"
export SIGNING_KEY="Developer ID Application: Thilo Bauer (D4LV6N24WN)"

SYSTEM_TYPE="$(uname -m)"
echo Building binary for system type $SYSTEM_TYPE

APP_PATH="Archibald.app"
CONTENTS_PATH="$APP_PATH/Contents"
JAVA_BASE_PATH="$APP_PATH/Contents/Java"
JAVA_PATH="$JAVA_BASE_PATH"
MACOS_PATH="$APP_PATH/Contents/MacOS"
RESOURCE_PATH="$APP_PATH/Contents/Resources"
PLUGINS_BASE_PATH="$APP_PATH/Contents/PlugIns"
PLUGINS_PATH="$PLUGINS_BASE_PATH/$SYSTEM_TYPE"

# JVMs long term support
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home"
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home"
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-14.jdk/Contents/Home"
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.0.8+7/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home"

echo "Preparing system dependent Java installation"

TEMP_PLUGIN_BASE_PATH="tmpJava"
JAVA_TEMP_BASE_PATH=$TEMP_PLUGIN_BASE_PATH
if [ ! -d $JAVA_TEMP_BASE_PATH ]; then
	echo Creating directory $JAVA_TEMP_BASE_PATH
	mkdir $JAVA_TEMP_BASE_PATH
fi
JAVA_TEMP_BASE_PATH="$JAVA_TEMP_BASE_PATH/$SYSTEM_TYPE"
if [ ! -d $JAVA_TEMP_BASE_PATH ]; then
	echo Creating directory $JAVA_TEMP_BASE_PATH
	mkdir $JAVA_TEMP_BASE_PATH
fi
JAVA_PLUGINS_PATH="$JAVA_TEMP_BASE_PATH/Java.plugin"
if [ ! -d $JAVA_PLUGINS_PATH ]; then
	echo Creating directory $JAVA_PLUGINS_PATH
	mkdir $JAVA_PLUGINS_PATH
fi

