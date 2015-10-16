#!/bin/sh
userdel -rf ubuntu 2>/dev/null

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
