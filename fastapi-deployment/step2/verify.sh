#!/bin/bash

container_running=$(docker inspect -f {{.State.Running}} registry)

if [ $container_running != "true" ]; then exit 1; fi

image_in_registry=$(curl http://localhost:5000/v2/_catalog | jq -c '.["repositories"] as $repos | "fastapi-helloworld" | IN($repos[])')

if [ $image_in_registry == "true" ]; then exit 0; else exit 1; fi
