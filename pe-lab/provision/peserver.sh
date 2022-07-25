#!/usr/bin/env bash

set -e

echo "Installing updates..."
yum upgrade -y
echo "Finished installing updates..."

cd /tmp
PE_URL='https://pm.puppet.com/cgi-bin/download.cgi?dist=el&rel=7&arch=x86_64&ver=latest'
curl -k -JLO "$PE_URL"
PE_PUBKEY_URI='https://downloads.puppet.com/puppet-gpg-signing-key-20250406.pub'
curl -k "$PE_PUBKEY_URI" | gpg --import
GPG_SIGNATURE='https://d2getqyrpmrvl0.cloudfront.net/released/2021.6.0/puppet-enterprise-2021.6.0-el-7-x86_64.tar.gz.asc'
curl -k -JLO $GPG_SIGNATURE
gpg --verify puppet-enterprise-2021.6.0-el-7-x86_64.tar.gz.asc
tar -xvf puppet-enterprise-2021.6.0-el-7-x86_64.tar.gz
/tmp/puppet-enterprise-2021.6.0-el-7-x86_64/puppet-enterprise-installer
sleep 5
puppet infrastructure console_password --password=mypassword
sleep 5
puppet agent -t
sleep 5
puppet agent -t

# Install Puppet Bolt
rpm -Uvh https://yum.puppet.com/puppet-tools-release-el-7.noarch.rpm
yum install -y puppet-bolt

set +e

exit 0