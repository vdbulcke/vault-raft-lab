#!/bin/bash

server=$1
if [ -z "$server" ]; then

    echo "need server as input"
    exit 0
fi 

echo "Create storage dir"
mkdir -p vault1-raft
mkdir -p vault2-raft
mkdir -p vault3-raft


case $server in 
    vault1)
        vault server  -config ./config/vault1.hcl

    ;;
    vault2)
        vault server  -config ./config/vault2.hcl

    ;;
    vault3)
        vault server  -config ./config/vault3.hcl

    ;;
    *)

        echo "unkown server ${server}"
        exit 1

    ;;
esac