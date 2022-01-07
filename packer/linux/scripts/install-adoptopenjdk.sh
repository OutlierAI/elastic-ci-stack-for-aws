#!/bin/bash
set -eu -o pipefail

echo "Adding adoptopenjdk repo"
sudo cp /tmp/conf/adoptopenjdk/adoptopenjdk.repo /etc/yum.repos.d/

echo "Installing adoptopenjdk"
sudo yum install -y adoptopenjdk-8-hotspot
