#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

kubectl create -f glusterfs-endpoints.yaml
kubectl create -f glusterfs-service.yaml
kubectl create -f glusterfs-pod.yaml
