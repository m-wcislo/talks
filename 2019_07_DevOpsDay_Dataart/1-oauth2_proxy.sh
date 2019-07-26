#!/usr/bin/env bash
set -e
if [ -z "$1" ]; then 
kubectl apply -f oauth2_proxy/keycloak.yml
helm install stable/oauth2-proxy --name oauth2-proxy -f oauth2_proxy/values.yml
kubectl apply -f echo/echo_headers.yml
kubectl apply -f echo/echo.yml
else
set +e
kubectl delete -f oauth2_proxy/keycloak.yml
helm delete oauth2-proxy --purge
kubectl delete -f echo/echo_headers.yml
kubectl delete -f echo/echo.yml
fi
