#!/bin/bash

DCFILE="compose-test.yml"
COMPOSE_PROJECT_NAME="$(basename ${0})"

export TESTVAR="Just a random TESTVAR value"

# Cleaning up just in case
docker-compose -f ${DCFILE} -p ${COMPOSE_PROJECT_NAME} kill
docker rm $(docker ps -aq) 2>&1 >/dev/null

# Now running the environment using local images
docker-compose -f ${DCFILE} build
docker-compose -f ${DCFILE} -p ${COMPOSE_PROJECT_NAME} up
echo -e "---\nInformation from docker:"
docker ps -a | egrep "(server|client)box" \
| sed -E 's/^([0-9a-z]+).+_([a-z]+)_[0-9]*$/\2 ID=\1/g'


