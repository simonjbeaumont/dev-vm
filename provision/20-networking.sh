#!/bin/sh
apt-get update -qq
apt-get install -qq -y network-manager
start network-manager
