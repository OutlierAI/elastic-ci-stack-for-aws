#!/bin/bash
set -eu -o pipefail

echo "Installing shasum"
sudo yum install -y perl-Digest-SHA
