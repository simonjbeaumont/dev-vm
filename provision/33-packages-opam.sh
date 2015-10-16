#!/bin/sh
add-apt-repository -y ppa:avsm/ppa
apt-get update -qq
apt-get install -yq opam
