#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive

# a function to install apt packages only if they are not installed
# see https://github.com/rocker-org/rocker-versioned2/blob/23b6961dcc187b7290b35ae4434180dfb1fa7f24/scripts/install_verse.sh#L14-L21
function apt_install() {
    if ! dpkg -s "$@" >/dev/null 2>&1; then
        if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
            apt-get update
        fi
        apt-get install -y --no-install-recommends "$@"
    fi
}

apt_install \
    jags
