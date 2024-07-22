#!/bin/bash
set -eou pipefail

SCRIPT_ROOT=$(dirname "${BASH_SOURCE[0]}")
cd "${SCRIPT_ROOT}"

TF_VAR_ip=$(curl https://ipinfo.io/ip -sSL)

export TF_VAR_ip
source .env

/root/.tfenv/bin/terraform apply -auto-approve