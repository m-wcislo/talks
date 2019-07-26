#!/usr/bin/env bash
set -e
if [ -z "$1" ]; then 
helm install stable/grafana --name mygrafana -f grafana/values.yml
kubectl apply -f grafana/grafana.yml
else
set +e
helm delete mygrafana --purge
kubectl delete -f grafana/grafana.yml
fi
