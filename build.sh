#!/bin/bash

export BUILD_DIR="build"
export JAVA_DIR="build"
export DLL_DIR="build"
export ARCH_TYPE=$(uname -m)

echo "Building for ${OSTYPE} ${ARCH_TYPE}"

if [[ "$OSTYPE" == "darwin"* ]]; then
    export OS_TYPE="macos"
    ./build-mac.sh
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    export OS_TYPE="windows"
    ./build-win.sh
else
    echo "Unknown operating system: $OSTYPE"
fi

echo "Ready."