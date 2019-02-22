#!/usr/bin/env bash

if [ ! -d "/tmp/pkgs" ]
then
    mkdir -p /tmp/pkgs
fi

# fetching cmake
CMAKE_MAJOR="3.12"
CMAKE_PATCH="4"
CMAKE_VERS="${CMAKE_MAJOR}.${CMAKE_PATCH}"
if [ ! -f "/tmp/pkgs/cmake.sh" ]
then
    wget -O /tmp/pkgs/cmake.sh https://cmake.org/files/v${CMAKE_MAJOR}/cmake-${CMAKE_VERS}-Linux-x86_64.sh
fi

if [ ! -f "/usr/bin/cmake" ]
then
    sh /tmp/pkgs/cmake.sh --skip-license --prefix=/usr
fi
