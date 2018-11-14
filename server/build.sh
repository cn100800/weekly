#!/bin/sh
set -e
export GOPATH=$(pwd)
cd src/weekly
go build -ldflags=-s
go install -ldflags=-s
cd ../../
bin/weekly
