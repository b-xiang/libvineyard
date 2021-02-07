#!/bin/bash

ROOT=$(dirname "${BASH_SOURCE[0]}")/..

helm uninstall vineyard -n vineyard-system

kubectl -n vineyard-system delete localobjects --all
kubectl -n vineyard-system delete globalobjects --all

set +x
set +e
set +o pipefail
