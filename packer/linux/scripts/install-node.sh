#!/bin/bash
set -eu -o pipefail

NODE_VERSION=14.18.1
YARN_VERSION=1.22.10
ARCH=$(uname -m)

# This performs a manual install of Node.
echo "Installing node ${NODE_VERSION}"
sudo rpm -i https://rpm.nodesource.com/pub_14.x/el/7/${ARCH}/nodejs-${NODE_VERSION}-1nodesource.${ARCH}.rpm
echo "Installing yarn ${YARN_VERSION}"
sudo npm install -g yarn@${YARN_VERSION}

echo "Installing development tools"
sudo yum groupinstall -y "Development Tools"
