#!/bin/sh
apt-get install -yq autofs5

echo "automount: nis" >> /etc/nsswitch.conf

echo "yp:auto.groups --timeout=3600" >> /etc/auto.master
echo "yp:auto.misc --timeout=3600" >> /etc/auto.master
echo "yp:auto.nfs --timeout=3600" >> /etc/auto.master

mv /etc/auto.misc /etc/auto.misc.old

echo "daemonoptions='tcp,udp,rsize=32768,wsize=32768'" >> /etc/default/autofs

service autofs restart
