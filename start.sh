#!/usr/bin/env bash

# check file(./xray/xray) is exist
if [ ! -f "./xray/xray" ]; then
    echo "error: ./xray/xray not found, please run install.sh first."
    exit 1
fi

# run ./xray/xray in backgroud