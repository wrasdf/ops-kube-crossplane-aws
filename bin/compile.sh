#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo
  echo "usage: ./bin/compile.sh <cluster>"
  echo "  ie. ./bin/compile.sh alpha-apse2-v1"
  exit 255
fi

cluster=${1}
configfile=clusters/${cluster}.yaml

function cleanTemplate() {
  echo "=== prepare $cluster template ==="
  rm -rf _build
  mkdir -p _build/${cluster}
}

function castTemplate() {

  echo "=== casting $cluster crossplane aws templates ==="
  gomplate \
    --left-delim='<<' --right-delim='>>' \
    --input-dir ./crossplane-aws/templates \
    --output-dir=_build/${cluster} \
    --context config=${configfile}
    
}

if [[ ! -f "${configfile}" ]]
then
  echo "error: configfile does not exist: ${configfile}"
  exit 1
fi

cleanTemplate
castTemplate

echo "Done!"

