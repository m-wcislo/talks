#!/usr/bin/env bash
set -e
if [ -z "$1" ]; then 
kubectl label namespace default istio-injection=enabled
kubectl apply -f https://info.rancher.com/hubfs/bookinfo.yaml
kubectl apply -f https://info.rancher.com/hubfs/bookinfo-gateway.yaml
kubectl apply -f istio/istio_wo_jwt.yml
kubectl label namespace default istio-injection=disabled --overwrite
else
kubectl delete -f https://info.rancher.com/hubfs/bookinfo.yaml
kubectl delete -f https://info.rancher.com/hubfs/bookinfo-gateway.yaml
kubectl delete -f istio/istio_wo_jwt.yml
fi
