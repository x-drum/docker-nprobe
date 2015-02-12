#!/bin/bash
set -e

: ${COLLECTOR_PORT:="6343"}

nprobe --collector-port $COLLECTOR_PORT

exec "$@"
