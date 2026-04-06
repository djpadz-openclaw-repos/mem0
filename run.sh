#!/bin/bash
# mem0 extraction runner — called by systemd timer
set -e
cd /home/openclaw/.openclaw-dj/workspace/mem0

source /home/openclaw/.openclaw-dj/secrets.sh

exec /home/openclaw/.nvm/versions/node/v24.14.0/bin/node --import=tsx/esm src/processor.ts >> /tmp/mem0-dj.log 2>&1
