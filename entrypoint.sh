#! /usr/bin/env bash

set -eo pipefail
set -x

ACTION_PLAYBOOK_NAME="${ACTION_PLAYBOOK_NAME:-playbook.yml}"

set -u

cd "${GITHUB_WORKSPACE}"

ACTION_PLAYBOOK_PATH="${GITHUB_WORKSPACE}/${ACTION_PLAYBOOK_NAME}"

if [  ! -z "$ACTION_SSH_PRIVATE_KEY" ]; then
  echo "${ACTION_SSH_PRIVATE_KEY}" > ~/.ssh/id_rsa
fi

>&2 echo
>&2 echo "==> Launch ${ACTION_PLAYBOOK_PATH}…"

ansible-playbook "${ACTION_PLAYBOOK_PATH}" ${ACTION_ANSIBLE_ARGS}

>&2 echo
