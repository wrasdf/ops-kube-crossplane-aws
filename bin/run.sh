#!/usr/bin/env bash

set -euo pipefail

./bin/compile.sh alpha-usea1-v1

kubectl apply -f _build/alpha-usea1-v1/mysql/regional/v1beta1/composition-spike.yaml
kubectl apply -f _build/alpha-usea1-v1/mysql/regional/v1beta1/xrd.yaml
kubectl apply -f _build/alpha-usea1-v1/example/rmysql-v1beta1.yaml

sleep 30


echo ""
echo "SecurityGroup =========="
echo ""
kubectl get SecurityGroup regional-mysql-deleteme-v1-gnvsj-rqcbr -o yaml

echo ""
echo "ClusterParameterGroup =========="
echo ""
kubectl get ClusterParameterGroup.rds.aws.upbound.io regional-mysql-deleteme-v1-gnvsj-9sckq -o yaml

echo ""
echo "ParameterGroup =========="
echo ""
kubectl get ParameterGroup.rds.aws.upbound.io regional-mysql-deleteme-v1-gnvsj-7h5kn -o yaml

echo ""
echo "Claim rmysql =========="
echo ""
kubectl -n pe get rmysql.aws.v1beta1.afterpay.cloud/regional-mysql-deleteme-v1 -o yaml

