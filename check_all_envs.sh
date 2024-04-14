#!/bin/bash
# Check all environment variables

if [ -z "${STELLARIS_TRANS_REPO_PATH}" ]; then
    echo Require translation tools git repo path. Please read README.md >&2
    exit 1
fi

if [ -z "${STELLARIS_NSC3_MOD_PATH}" ]; then
    echo Require nsc mod path. Please read README.md >&2
    exit 1
fi

if [ -z "${STELLARIS_MORE_TRADITIONS_MOD_PATH}" ]; then
    echo Require more traditions mod path. Please read README.md >&2
    exit 1
fi

if [ -z "${STELLARIS_MORE_HOME_SYSTEMS_MOD_PATH}" ]; then
    echo Require more home systems mod path. Please read README.md >&2
    exit 1
fi

if [ -z "${STELLARIS_MORE_LEADER_TRAITS_MOD_PATH}" ]; then
    echo Require more leader traits mod path. Please read README.md >&2
    exit 1
fi
