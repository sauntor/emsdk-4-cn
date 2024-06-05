#!/bin/bash
basedir=$(cd $(dirname $0);pwd)
em_version=$1
cd $basedir/emscripten
./emsdk activate ${em_version}
