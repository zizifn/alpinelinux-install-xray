#!/usr/bin/env bash

# check file(./xray/xray) is exist
if [ ! -f "./xray/xray" ]; then
    echo "error: ./xray/xray not found, please run install.sh first."
    exit 1
fi

# check file nohup.out exist and rm it
if [ -f "./nohup.out" ]; then
    rm -rf ./nohup.out
fi

# find process ./xray/xray and kill it
ps -ef | grep "./xray/xray" | grep -v grep | awk '{print $2}' | xargs kill -9

# run ./xray/xray in backgroud
nohup ./xray/xray -c server.json &