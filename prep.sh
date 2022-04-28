#!/bin/sh

sudo apt update && sudo apt install vim git curl build-essential tmux

curl -L https://go.dev/dl/go1.18.1.linux-amd64.tar.gz | sudo tar -C /usr/local -xzf

export PATH=$PATH:/usr/local/go/bin

go get github.com/lucas-clemente/quic-go@v0.26.0
