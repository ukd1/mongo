#!/bin/bash

#
# Build rocks 3.12.1
#
cd /tmp
git clone https://github.com/facebook/rocksdb.git
cd rocksdb
git checkout v3.12.1
make shared_lib
mkdir -p /usr/local/rocksdb/lib
mkdir /usr/local/rocksdb/include
cp librocksdb.so* /usr/local/rocksdb/lib
cp /usr/local/rocksdb/lib/librocksdb.so* /usr/lib/
cp -r include /usr/local/rocksdb/