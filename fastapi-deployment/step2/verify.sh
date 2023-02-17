#!/bin/bash

[ $(docker ps --filter "name=^/registry$" --format '{{.Names}}') == registry ]
