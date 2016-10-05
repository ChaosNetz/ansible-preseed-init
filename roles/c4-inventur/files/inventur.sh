#!/bin/bash
export LC_ALL=C

fn="`date +%s`"
lshw -json > /tmp/$fn
sn="`cat /tmp/$fn | egrep -oi 'serial:.*' | head -n 1 | cut -d\  --fields=2`"
mv /tmp/$fn /tmp/$sn-$fn
curl -u ftp:ftp -T /tmp/$sn-$fn ftp://trillian.labor.koeln.ccc.de/incoming/inventory/

