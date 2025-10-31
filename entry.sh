#!/usr/bin/env bash
set -e
# Render provides $PORT; n8n expects N8N_PORT
export N8N_PORT="${PORT:-5678}"
# sensible default timezone; can be overridden by env
export GENERIC_TIMEZONE="${GENERIC_TIMEZONE:-Asia/Kolkata}"
exec /docker-entrypoint.sh start
