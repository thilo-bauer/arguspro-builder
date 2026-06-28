#!/bin/bash

source config/config.sh

#PLUGINS_PATH="Java.plugin"
CONTENTS_PATH="$JAVA_PLUGINS_PATH/Contents"
HOME_PATH="$JAVA_PLUGINS_PATH/Contents/Home"
MACOS_PATH="$JAVA_PLUGINS_PATH/Contents/MacOS"
RESOURCE_PATH="$JAVA_PLUGINS_PATH/Contents/Resources"


#----------------------------------
# Clean install
#----------------------------------
echo "Clean up: Remove old installation"
rm -rf $JAVA_PLUGINS_PATH

#----------------------------------
# Create hierarchical paths
#----------------------------------
echo "Creating directory structure"
mkdir $JAVA_PLUGINS_PATH
mkdir $CONTENTS_PATH
#mkdir $HOME_PATH
mkdir $MACOS_PATH
mkdir $RESOURCE_PATH

# 2023-08-26: Added jdk.localedata for multi-language
echo "Creating reduced Java environment"
$JAVA_HOME/bin/jlink \
--module-path "$JAVA_PLUGINS_PATH/Contents/Java;$JAVA_HOME/jmods" \
--add-modules "java.base,java.desktop,java.logging,jdk.localedata" \
--output "$HOME_PATH" \
--no-header-files \
--no-man-pages \
--strip-debug \
--compress zip-9
#--compress=2

#----------------------------------
# Legal stuff to Resources
#----------------------------------
echo "Copy legal documents to resource folder"
mv $HOME_PATH/legal $RESOURCE_PATH

#----------------------------------
# Cleanup stuff not necessary 
#----------------------------------
echo "### Cleanup"
#rm $PLUGINS_PATH/Contents/Home/bin/keytool

#----------------------------------
# Copy Info.plist
#----------------------------------
echo "Copy Info.plist to its final destination"
cp config/Info-bundle.plist $CONTENTS_PATH/Info.plist
