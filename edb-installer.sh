#!/bin/bash

# install dependencies
sudo pacman --noconfirm -S  \
    capstone                \
    cmake                   \
    qt5-svg                 \
    qt5-xmlpatterns         \
    graphviz                \

# build and run edb
cd ~/bin/
git clone --recursive https://github.com/eteran/edb-debugger.git
cd edb-debugger
mkdir build
cd build
cmake ..
make

# Comment out the next line if you don't want to run EDB after the installation.
./edb
