#!/bin/bash
# TODO: build containers
# docker build -t notes-app:latest -f Dockerfile.notes .
# docker build -t calendar-app:latest -f Dockerfile.calendar .
kubectl apply -f kubernetes/local/postgres.yaml
kubectl apply -f kubernetes/local/notes-app.yaml
kubectl apply -f kubernetes/local/calendar-app.yaml