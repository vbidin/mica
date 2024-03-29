#!/bin/sh
set -e

export FOUNDRY_CONFIG=./configs/foundry.toml

npm install -g prettier prettier-plugin-solidity solhint

curl -L https://foundry.paradigm.xyz | bash
foundryup
forge install
