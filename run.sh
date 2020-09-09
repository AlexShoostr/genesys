#!/bin/bash

docker build . -f Dockerfile.serverbox -t serverbox:0.0.1
docker build . -f Dockerfile.clientbox -t clientbox:0.0.1
./run-test.sh
