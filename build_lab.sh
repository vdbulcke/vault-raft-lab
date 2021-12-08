#!/bin/bash



echo "Set lo ip address"
sudo ip a add 127.0.0.2 dev lo
sudo ip a add 127.0.0.3 dev lo

