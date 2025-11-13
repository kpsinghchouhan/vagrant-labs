#!/usr/bin/env bash

set -e

echo "Installing updates..."
yum upgrade -y
echo "Finished installing updates..."
# Schedule a restart if needed
needs-restarting -r || shutdown -r +1

set +e

exit 0
