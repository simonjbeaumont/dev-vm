#!/bin/sh

sudo su - simonbe
export HOME=/local/home/simonbe
cd

git clone git://github.com/simonjbeaumont/.dotfiles
rm ~/.bashrc
(cd .dotfiles; ./bootstrap.sh)
