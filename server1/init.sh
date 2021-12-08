#!/bin/bash


echo "init server"
vault operator init -format=json -key-shares=1 -key-threshold=1 | tee unseal.json


vault operator unseal $(cat unseal.json | jq -r ".unseal_keys_b64[0]" )


echo "load root token from server 1"
echo export VAULT_TOKEN=$(cat unseal.json  | jq -r ".root_token")

