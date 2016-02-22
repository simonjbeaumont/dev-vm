#!/bin/sh
set -ev

echo "postfix postfix/mailname string null" > /tmp/postfix-conf
echo "postfix postfix/main_mailer_type string 'No configuration'" >> /tmp/postfix-conf
debconf-set-selections /tmp/postfix-conf

apt-get install -qq mutt-patched
