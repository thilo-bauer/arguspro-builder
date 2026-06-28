#!/bin/bash

ARCH_TYPE=$(uname -m)

echo "Building for ${OSTYPE} ${ARCH_TYPE}"

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Mac (macOS)"
    # Hier Mac-spezifische Befehle einfügen
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    echo "Windows"
    # Hier Windows-spezifische Befehle einfügen
else
    echo "Unknown operating system: $OSTYPE"
fi

echo "Ready."