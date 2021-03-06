#!/bin/sh

HAMACHI_DST=/opt/logmein-hamachi

echo Stopping LogMeIn Hamachi engine ..
/etc/init.d/logmein-hamachi stop

echo Removing LogMeIn Hamachi service ..
update-rc.d logmein-hamachi remove
rm -f /etc/init.d/logmein-hamachi
rm -rf /var/run/logmein-hamachi

echo Removing LogMeIn Hamachi symlink ..
rm /usr/bin/hamachi

echo Removing files from $HAMACHI_DST ..
rm -rf "$HAMACHI_DST"

echo LogMeIn Hamachi is removed.
