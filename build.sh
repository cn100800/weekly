#!/bin/bash
set -e

server(){
    cd server/src/weekly
    go build -ldflags=-s
    go install -ldflags=-s
    cd ../../../
    server/bin/weekly
}

web(){
    if [[ $1 = 'dev' ]]; then
        npm run dev --prefix web
    elif [[ $1 = 'build' ]]; then
        npm run build --prefix web
        npm run start --prefix web
    fi
}

while [[ $# -gt 0 ]]; do
    case $1 in

        -server)
            shift
                server
            ;;

        -web)
            shift
                web $1
            ;;
    esac
done
