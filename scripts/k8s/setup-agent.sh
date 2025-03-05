#!/bin/bash
source .env
kubectl create ns datadog
kubectl create secret generic datadog-secret --from-literal api-key=$DD_API_KEY -n datadog
helm repo add datadog https://helm.datadoghq.com
helm install dd-operator datadog/datadog-operator -n datadog
kubectl apply -f kubernetes/datadog-agent.yaml -n datadog
