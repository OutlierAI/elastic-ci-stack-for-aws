#!/bin/bash
set -eu -o pipefail

echo "Installing Buildkite Secrets Manager hooks"
sudo git clone https://github.com/marcargent/elastic-ci-stack-secrets-manager-hooks.git /var/lib/buildkite-agent/plugins/sm_secrets
