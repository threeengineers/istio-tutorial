#!/bin/bash

url=$1
if [ -z "$url" ]
then
    echo "Please provide url as first argument"
    exit 1
fi

while true
do curl $url
sleep .5
done
