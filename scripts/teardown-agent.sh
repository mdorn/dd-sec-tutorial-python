#!/bin/bash
# rm Datadog agent
kubectl delete -f kubernetes/datadog-agent.yaml -n datadog
# rm Datadog operator
helm uninstall dd-operator -n datadog
# rm Datadog secret
kubectl delete secret datadog-secret -n datadog
# WAIT for about 30 seconds before deleting namespace
sleep 30
# rm datadog ns
kubectl delete ns datadog
