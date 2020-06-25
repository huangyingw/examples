#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/
kubectl apply -f local-volumes.yaml
kubectl apply -k ./
# kubectl patch svc wordpress -p '{"spec": {"type": "LoadBalancer", "externalIPs":["10.1.10.168"]}}'
