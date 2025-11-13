#!/usr/bin/env bash

set -e

echo "Installing updates..."
apt update -y
apt dist-upgrade -y
echo "Finished installing updates..."
# Schedule a restart if needed
if [[ -d /var/run/needrestart ]]; then
    shutdown -r +1
fi

set +e

exit 0
