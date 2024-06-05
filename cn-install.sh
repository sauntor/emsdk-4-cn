#!/bin/bash
export EMSDK_KEEP_DOWNLOADS=1
basedir=$(cd $(dirname $0);pwd)
em_version=$1
cd $basedir/emscripten
./emsdk install ${em_version}
