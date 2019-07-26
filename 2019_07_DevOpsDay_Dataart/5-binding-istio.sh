#!/usr/bin/env bash
set -e
if [ -z "$1" ]; then 
kubectl apply -f istio/servicerole.yml
kubectl apply -f istio/servicerolebinding.yml
else
kubectl delete -f istio/servicerole.yml
kubectl delete -f istio/servicerolebinding.yml
fi
