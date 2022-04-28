#!/bin/sh

git clone https://github.com/iotaledger/wasp
export PATH=$PATH:$(go env GOPATH)/bin
cd wasp
make install
go test -tags rocksdb,builtin_static -timeout 20m ./...
