#!/usr/bin/env bash

set -e

knife "$@"

#chown -R ${DEV_UID}:${DEV_GID} /tmp/workdir
chown -R ${DEV_UID} /tmp/workdir
