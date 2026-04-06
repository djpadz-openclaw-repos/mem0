#!/bin/bash
# mem0 extraction runner — called by systemd timer
set -e
cd "${BASH_SOURCE%/*}"

source /home/openclaw/.openclaw-dj/secrets.sh

exec /home/openclaw/.nvm/versions/node/v24.14.0/bin/node --import=tsx/esm src/processor.ts >> /tmp/mem0-dj.log 2>&1
