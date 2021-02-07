#!/bin/bash

set -x
set -e
set -o pipefail

ROOT=$(dirname "${BASH_SOURCE[0]}")/..

helm install vineyard $ROOT/vineyard/ -n vineyard-system

set +x
set +e
set +o pipefail
