#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/
kubectl apply -k ./
