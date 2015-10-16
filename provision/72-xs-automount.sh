#!/bin/sh
apt-get install -yq autofs5

#echo "automount: nis" >> /etc/nsswitch.conf

echo "/usr/groups yp:auto.groups --timeout=3600" >> /etc/auto.master

sed -i '/^BROWSE_MODE/ s/no/yes/' /etc/default/autofs
echo "daemonoptions='tcp,udp,rsize=32768,wsize=32768'" >> /etc/default/autofs

service autofs restart
