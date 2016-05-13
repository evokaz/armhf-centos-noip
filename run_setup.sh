#!/bin/bash

## Get, untar, and install the latest noip client
wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz -O - | tar xz
cd noip-*
make
make install

## Clean up the install dir because we do not need it any more
cd /
rm -rf /tmp/noip-*