#!/bin/bash

WORK_DIR=$PWD

git submodule update --init

cd $WORK_DIR/rdma-core
git checkout $(git branch -a | grep rhel85 | head -n 1)
bash autogen.sh && ./configure && make

cd $WORK_DIR/perftest 
git checkout $(git branch -a | grep rhel85 | head -n 1)
bash autogen.sh && ./configure && make

