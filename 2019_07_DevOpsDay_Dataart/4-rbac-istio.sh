#!/usr/bin/env bash
set -e
if [ -z "$1" ]; then 
kubectl apply -f istio/rbac.yml
else
kubectl delete -f istio/rbac.yml
fi
