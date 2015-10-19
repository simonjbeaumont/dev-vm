#!/bin/sh
groupadd -g 10020 xendev
useradd -u 2279 -g 10020 -s /bin/bash -m simonbe

usermod -aG docker simonbe
# usermod -aG mock simonbe

echo "simonbe ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/simonbe

cp -r ~vagrant/.ssh ~simonbe/.ssh
chown -R simonbe:xendev ~simonbe/.ssh
