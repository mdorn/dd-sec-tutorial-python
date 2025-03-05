#!/bin/bash
docker build \
 -t notes-app:latest \
 --build-arg DD_GIT_REPOSITORY_URL=https://github.com/mdorn/dd-sec-tutorial-python.git \
 --build-arg DD_GIT_COMMIT_SHA=$(git rev-parse HEAD) \
 -f docker/Dockerfile.notes .
docker build \
 -t calendar-app:latest \
 --build-arg DD_GIT_REPOSITORY_URL=https://github.com/mdorn/dd-sec-tutorial-python.git \
 --build-arg DD_GIT_COMMIT_SHA=$(git rev-parse HEAD) \
 -f docker/Dockerfile.calendar .
docker-compose -f docker/docker-compose.yaml --env-file .env up