#!/bin/bash
# build-server.sh

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

cd "$SCRIPT_DIR/../server"

docker build -t server .

cd "$SCRIPT_DIR"

