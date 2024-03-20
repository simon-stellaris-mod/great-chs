#!/bin/bash
# Build a zip file for manually installing this mod

set -e

if [ -z "${STELLARIS_TRANS_REPO_PATH}" ]; then
    echo Require translation tools git repo path. Please read README.md >&2
    exit 1
fi

if [ -z "${STELLARIS_NSC3_GIT_REPO_PATH}" ]; then
    echo Require nsc git repo path. Please read README.md >&2
    exit 1
fi

# Build translation files

python3 ${STELLARIS_TRANS_REPO_PATH}/scripts/translation.py \
    build \
    --name nsc3 \
    --source-path ${STELLARIS_NSC3_GIT_REPO_PATH}/localisation/english \
    --source-language english \
    --data-file ./data/ncs3.json \
    --output-path ./mod/localisation

# Zip files
cd ./mod
zip -r great-chs.zip *
mv great-chs.zip ../
