#!/bin/sh
set -ev

add-apt-repository -y ppa:avsm/ppa
apt-get update -qq
apt-get install -qq m4 opam
