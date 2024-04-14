#!/bin/bash
# Build a zip file for manually installing this mod

set -e

. ./check_all_envs.sh

# Build translation files

echo Build \[NSC3\] >&2
python3 ${STELLARIS_TRANS_REPO_PATH}/scripts/translation.py \
    build \
    --name nsc3 \
    --source-path ${STELLARIS_NSC3_MOD_PATH}/localisation \
    --load-language english \
    --source-language english \
    --data-file ./data/nsc3.json \
    --output-path ./mod/localisation

echo Build \[More Traditions\] >&2
python3 ${STELLARIS_TRANS_REPO_PATH}/scripts/translation.py \
    build \
    --name more-traditions \
    --source-path ${STELLARIS_MORE_TRADITIONS_MOD_PATH}/localisation \
    --load-language english \
    --source-language english \
    --data-file ./data/more-traditions.json \
    --output-path ./mod/localisation >&2

echo Build \[More Home Systems\] >&2
python3 ${STELLARIS_TRANS_REPO_PATH}/scripts/translation.py \
    build \
    --name more-home-systems \
    --source-path ${STELLARIS_MORE_HOME_SYSTEMS_MOD_PATH}/localisation \
    --load-language english \
    --source-language english \
    --data-file ./data/more-home-systems.json \
    --output-path ./mod/localisation >&2

echo Build \[More Leader Traits\] >&2
python3 ${STELLARIS_TRANS_REPO_PATH}/scripts/translation.py \
    build \
    --name more-leader-traits \
    --source-path ${STELLARIS_MORE_LEADER_TRAITS_MOD_PATH}/localisation \
    --load-language english \
    --source-language english \
    --data-file ./data/more-leader-traits.json \
    --output-path ./mod/localisation >&2

echo Pack files >&2

# Zip files
cd ./mod
zip -r great-chs.zip *
mv great-chs.zip ../
