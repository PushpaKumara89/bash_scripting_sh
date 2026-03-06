#!/bin/bash
if [ "$#" -lt 2 ]; then 
    echo "Usage: $0 <target> <intervel-in-seconds>"
    exit 1
fi

TARGET=$1
INTERVEL=$2

echo "Sending requests to $TARGET every $INTERVEL seconds..."

while true; do
    REQUEST_TIME=$(date +"%Y-%m-%d %H:%M:%S")
    RESPONSE=$(curl -s "$TARGET")

    echo "[$REQUEST_TIME] $RESPONSE"
    sleep $INTERVEL
done
