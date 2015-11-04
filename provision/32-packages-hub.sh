#!/bin/sh
set -ev

wget -q https://github.com/github/hub/releases/download/v2.2.1/hub-linux-amd64-2.2.1.tar.gz
tar -xf hub-linux-amd64-2.2.1.tar.gz
mv hub-linux-amd64-2.2.1/hub /usr/local/bin
rm -rf hub-linux-amd64-2.2.1*
