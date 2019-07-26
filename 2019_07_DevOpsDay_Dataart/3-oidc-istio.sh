#!/usr/bin/env bash
set -e
if [ -z "$1" ]; then 
kubectl apply -f istio/jwt_policy.yml
kubectl apply -f istio/istio.yml
else
kubectl delete -f istio/jwt_policy.yml
kubectl delete -f istio/istio.yml
fi
