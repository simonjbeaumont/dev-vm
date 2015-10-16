#!/bin/sh
mkdir -p /local/home

groupadd -g 10020 xendev
useradd -u 2279 -g 10020 -s /bin/bash -b /local/home -m simonbe

usermod -aG docker simonbe
usermod -aG mock simonbe

echo "simonbe ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/simonbe

cp -r /home/vagrant/.ssh/ /local/home/simonbe/

chown -R simonbe:xendev /local/home/simonbe
