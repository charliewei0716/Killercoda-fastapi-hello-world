#!/bin/bash

result=$( docker inspect -f {{.State.Running}} registry)

if [ $result == "true" ]
then
  exit 0
else
  exit 1
fi
