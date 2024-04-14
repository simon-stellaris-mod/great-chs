#!/bin/bash
#
# Run translation server for nsc3
#
set -e

if [ -z "${STELLARIS_TRANS_REPO_PATH}" ]; then
    echo Require translation tools git repo path. Please read README.md >&2
    exit 1
fi

if [ -z "${STELLARIS_NSC3_MOD_PATH}" ]; then
    echo Require nsc mod path. Please read README.md >&2
    exit 1
fi

python3 ${STELLARIS_TRANS_REPO_PATH}/scripts/server.py \
    --name nsc3 \
    --source-path ${STELLARIS_NSC3_MOD_PATH}/localisation \
    --load-language english \
    --load-language simp_chinese \
    --default-source-language english \
    --default-target-language simp_chinese \
    --data-file ./data/nsc3.json \
    --output-path ./mod/localisation \
    --build-mod-translated-key
