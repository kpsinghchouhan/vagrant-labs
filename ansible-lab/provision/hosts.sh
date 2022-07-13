#!/usr/bin/env bash

set -e

HOSTNAME=$1
FQDN=$2
IPADDR=$3
HOSTFILE="/etc/hosts"
MESSAGE="# The following lines are managed by Vagrant provisioning"

if [[ ! $(grep "$MESSAGE" $HOSTFILE) ]]
then
    echo "" >> $HOSTFILE
    echo $MESSAGE >> $HOSTFILE
fi

if [[ ! $(grep $IPADDR $HOSTFILE) ]]
then
    echo "${IPADDR} ${FQDN} ${HOSTNAME}" >> $HOSTFILE
fi

set +e

exit 0