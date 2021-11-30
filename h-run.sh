#!/usr/bin/env bash

[[ `ps aux | grep "./danila-miner" | grep -v grep | wc -l` != 0 ]] &&
  echo -e "${RED}$MINER_NAME miner is already running${NOCOLOR}" &&
  exit 1

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)" #"

cd $SCRIPT_DIR

./danila-miner $( < custom.conf ) |& tee log.log

