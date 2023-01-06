#!/bin/bash
set -e

sudo apt-get install libzmq3-dev # Ubuntu, for clustermq

Rscript -e 'remotes::install_deps("/tmp")'
