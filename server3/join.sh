#!/bin/bash
echo "join server 1"
vault operator raft join http://127.0.0.1:8210


vault status

sleep 2

echo "unseal using the unseal keys from server 1"
vault operator unseal $(cat ../server1/unseal.json  | jq  -r ".unseal_keys_b64[0]" )

sleep 2

echo "load root token from server 1"
echo export VAULT_TOKEN=$(cat ../server1/unseal.json  | jq -r ".root_token")

vault status

