#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

PASSWORD=${PASSWORD:-}
DATADIR=${DATADIR:-/home/bee/.bee}
EXTRA_OPTS=${EXTRA_OPTS:-}

VERSION=`bee version`
echo "Running bee:"
echo $VERSION

echo $PASSWORD > /home/bee/.password

exec bee start --swap-endpoint https://rpc.slock.it/goerli --config /home/bee/config.yml $EXTRA_OPTS $@ 2>&1