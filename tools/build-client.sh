#!/bin/bash
# build-client.sh

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

cd "$SCRIPT_DIR/../client"

docker build -t client .

cd "$SCRIPT_DIR"

