#!/bin/sh
echo "nis nis/domain string uk.xensource.com" > /tmp/nisinfo
debconf-set-selections /tmp/nisinfo

apt-get install -yq nis

echo "ypserver nis.uk.xensource.com" > /etc/yp.conf

service ypbind restart

echo "uk.xensource.com" > /etc/defaultdomain
