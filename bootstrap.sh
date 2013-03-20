#!/bin/bash

rm -rf CMakeFiles
rm -rf CMakeCache.txt

MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
  ARCHITECTURE=__i386__
else
  ARCHITECTURE=__i386__
fi

CC=clang CXX=clang++ cmake .
