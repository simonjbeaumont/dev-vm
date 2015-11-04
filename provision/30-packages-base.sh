#!/bin/sh
set -ev

apt-get update -qq
apt-get install -qq \
  git \
  vim-athena \
  tmux \
  xclip \
  x11-apps \
  colordiff \
  pylint \
  pep8 \
  vagrant \
  mock
