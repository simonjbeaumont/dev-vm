#!/bin/sh
set -ev

apt-get install -qq autofs5

cat >> /etc/auto.master <<EOI
/usr/groups yp:auto.groups --timeout=3600
/nis        yp:auto.home   --timeout=3600
/nfs        yp:auto.nfs    --timeout=3600
EOI

sed -i '/^BROWSE_MODE/ s/no/yes/' /etc/default/autofs
echo "daemonoptions='tcp,udp,rsize=32768,wsize=32768'" >> /etc/default/autofs

service autofs restart
