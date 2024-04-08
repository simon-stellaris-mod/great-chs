#!/bin/bash
# Run auto trans

set -e

. ./check_all_envs.sh

echo Run auto-trans \[NSC3\] >&2
python3 ${STELLARIS_TRANS_REPO_PATH}/scripts/translation.py \
    auto-trans \
    --source-path ${STELLARIS_NSC3_GIT_REPO_PATH}/localisation \
    --load-language english \
    --source-language english \
    --target-language simp_chinese \
    --data-file ./data/nsc3.json >&2

echo Run auto-trans \[More Traditions\] >&2
python3 ${STELLARIS_TRANS_REPO_PATH}/scripts/translation.py \
    auto-trans \
    --source-path ${STELLARIS_MORE_TRADITIONS_MOD_PATH}/localisation \
    --load-language english \
    --source-language english \
    --target-language simp_chinese \
    --data-file ./data/more-traditions.json >&2

echo Run auto-trans \[More Home Systems\] >&2
python3 ${STELLARIS_TRANS_REPO_PATH}/scripts/translation.py \
    auto-trans \
    --source-path ${STELLARIS_MORE_HOME_SYSTEMS_MOD_PATH}/localisation \
    --load-language english \
    --source-language english \
    --target-language simp_chinese \
    --data-file ./data/more-home-systems.json >&2

echo Run auto-trans \[More Leader Traits\] >&2
python3 ${STELLARIS_TRANS_REPO_PATH}/scripts/translation.py \
    auto-trans \
    --source-path ${STELLARIS_MORE_LEADER_TRAITS_MOD_PATH}/localisation \
    --load-language english \
    --source-language english \
    --target-language simp_chinese \
    --data-file ./data/more-leader-traits.json >&2
