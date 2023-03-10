#!/usr/bin/env bash

set -ef -o pipefail

# Activate the environment if $MAMBA_DOCKERFILE_ACTIVATE=1
if [[ "${MAMBA_DOCKERFILE_ACTIVATE}" == "1" ]]; then
    source .activate.sh
fi

exec bash -o pipefail -c "$@"