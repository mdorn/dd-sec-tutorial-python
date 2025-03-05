#!/bin/bash
# docker build -t notes-app:latest -f Dockerfile.notes .
# docker build -t calendar-app:latest -f Dockerfile.calendar .
docker build \
 -t notes-app:latest \
 --build-arg DD_GIT_REPOSITORY_URL=https://github.com/mdorn/dd-sec-tutorial-python.git \
 --build-arg DD_GIT_COMMIT_SHA=$(git rev-parse HEAD) \
 -f Dockerfile.notes .
docker build \
 -t calendar-app:latest \
 --build-arg DD_GIT_REPOSITORY_URL=https://github.com/mdorn/dd-sec-tutorial-python.git \
 --build-arg DD_GIT_COMMIT_SHA=$(git rev-parse HEAD) \
 -f Dockerfile.calendar .
kubectl apply -f kubernetes/local/postgres.yaml
kubectl apply -f kubernetes/local/notes-app.yaml
kubectl apply -f kubernetes/local/calendar-app.yaml