#!/bin/bash

rm -f tplibs.jar 
rm -rf lib libs

set -e

if [ "$SL4A_PATH" == "" ]; then
    echo "Set SL4A_PATH to the sl4a root"
    exit 1
fi

cp -av $SL4A_PATH/python-build/python/libs/ .
rm libs/armeabi/python
