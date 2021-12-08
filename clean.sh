#!/bin/bash



server=$1
if [ -z "$server" ]; then

    echo "need server as input"
    echo "user 'all' for all servers"
    exit 0
fi 


case $server in 
    vault1)
        echo "delete storage dir"
        rm -rf vault1-raft

    ;;
    vault2)
        echo "delete storage dir"
        rm -rf vault2-raft

    ;;
    vault3)
        echo "delete storage dir"
        rm -rf vault3-raft

    ;;
    all)
        echo "delete storage dir"
        rm -rf vault1-raft
        rm -rf vault2-raft
        rm -rf vault3-raft

        echo "Create storage dir"
        mkdir -p vault1-raft
        mkdir -p vault2-raft
        mkdir -p vault3-raft


    ;;
    *)

        echo "unkown server ${server}"
        exit 1

    ;;
esac

