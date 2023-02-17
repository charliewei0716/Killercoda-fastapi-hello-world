#!/bin/bash

if [ "$(pwd)" == "/root/fastapi-hello-world" ]
then
    exit 0
else
    exit 1
fi
