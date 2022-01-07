#!/bin/bash
set -eu -o pipefail

# Used for rendering Kubernetes templates

KUBECTL_VERSION="1.18.20-0"

echo "Adding kubernetes repo"
sudo cp /tmp/conf/kubernetes/kubernetes.repo /etc/yum.repos.d/

echo "Installing kubectl ${KUBECTL_VERSION}"
sudo yum install -y kubectl-${KUBECTL_VERSION}
