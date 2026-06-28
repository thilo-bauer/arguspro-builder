#!/bin/bash

echo "Building for ${OS_TYPE} ${ARCH_TYPE}"

# Clean install
rm -rf ${BUILD_DIR}/windows
mkdir ${BUILD_DIR}/windows

mkdir ${BUILD_DIR}/windows/${JAVA_DIR}
mkdir ${BUILD_DIR}/windows/${JAVA_DIR}


echo "Ready."