#!/bin/sh
set -ev

apt-get update -qq
apt-get install -qq network-manager
start network-manager
