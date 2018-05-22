#!/bin/bash -eux

# To allow for autmated installs, we disable interactive configuration steps.
export DEBIAN_FRONTEND=noninteractive

# The memcached server.
apt-get --assume-yes --ignore-missing install memcached libevent-dev

# Setup memcached to start automatically.
systemctl start memcached.service && systemctl enable memcached.service
