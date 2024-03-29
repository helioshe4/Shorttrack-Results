#!/bin/bash
# build.sh

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

cd "$SCRIPT_DIR/.."
docker-compose down

"$SCRIPT_DIR/build-client.sh"

"$SCRIPT_DIR/build-server.sh"

cd "$SCRIPT_DIR/.."

docker-compose up -d

cd "$SCRIPT_DIR"
