#!/usr/bin/env bash

set -euo pipefail


./bin/compile.sh alpha-usea1-v1

kubectl delete -f _build/alpha-usea1-v1/mysql/regional/v1beta1/composition-spike.yaml
kubectl delete -f _build/alpha-usea1-v1/mysql/regional/v1beta1/xrd.yaml
kubectl delete -f _build/alpha-usea1-v1/example/rmysql-v1beta1.yaml

