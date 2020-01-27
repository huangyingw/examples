#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

kubectl taint nodes --all node-role.kubernetes.io/master-
kubectl apply -f local-volumes.yaml
kubectl apply -k ./
