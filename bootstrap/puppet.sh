#!/bin/bash

. /etc/lsb-release

echo "==> OS detected: ${DISTRIB_ID} ${DISTRIB_RELEASE} (${DISTRIB_CODENAME})"
apt-get update
apt-get install -y puppet