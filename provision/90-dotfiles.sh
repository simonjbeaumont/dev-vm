#!/bin/sh
set -ev

su -l simonbe -c '/bin/bash <<EOI
rm -f ~/.bashrc
git clone git://github.com/simonjbeaumont/.dotfiles ~/.dotfiles
cd ~/.dotfiles
./bootstrap.sh
EOI'
