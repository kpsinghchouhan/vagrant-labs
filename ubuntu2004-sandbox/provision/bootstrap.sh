#!/usr/bin/env bash

set -e

echo "Installing updates..."
apt update -y
apt dist-upgrade -y
echo "Finished installing updates..."

set +e

exit 0