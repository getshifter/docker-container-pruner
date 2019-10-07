#!/bin/sh

prune_before=${PRUNE_BEFORE:-2h}
interval=${INTERVAL:-1h}

while true; do docker container prune --force --filter "until=${prune_before}" ; sleep "${interval}" ; done

exit 0
