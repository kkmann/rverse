#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

JAGS_HOME=/usr/bin/jags

mkdir $JAGS_HOME
wget -O JAGS-4.3.1.tar.gz --no-check-certificate 'https://downloads.sourceforge.net/project/mcmc-jags/JAGS/4.x/Source/JAGS-4.3.1.tar.gz?ts=gAAAAABiaVHglHhNp4BZaZHGfBZlKKFYGZ3MgKOMq2xGKxPr-dR22veWhMnaWFGHVkzpo-x_-GPgJEwjDSZubU3xt8aBfLddtQ%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fmcmc-jags%2Ffiles%2FJAGS%2F4.x%2FSource%2FJAGS-4.3.1.tar.gz%2Fdownload'
tar -xf JAGS-4.3.1.tar.gz
(cd JAGS-4.3.1; ./configure --prefix=$JAGS_HOME; make; make install)
rm JAGS-4.3.1.tar.gz
rm -rf JAGS-4.3.1
