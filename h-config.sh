#!/bin/bash

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)" #"
MINER_CONFIG="$SCRIPT_DIR/$MINER_NAME.conf"

# READ ENVS FROM FILE
set -o allexport
source $WALLET_CONF
set +o allexport

# CHECK NOT EMPTY
WALLET_ADR=$CUSTOM_TEMPLATE
if [[ -z "$WALLET_ADR" ]]; then
  exit 1
fi

echo "run $CUSTOM_URL $WALLET_ADR" > $MINER_CONFIG

exit 0
