#!/bin/bash
export LC_ALL=C

fn="`date +%s`"
lshw -json > /tmp/$fn
sn="`python2 serial.py /tmp/$fn`"
mv /tmp/$fn /tmp/$sn-$fn
curl -u ftp:ftp -T /tmp/$sn-$fn ftp://trillian.labor.koeln.ccc.de/incoming/inventory/

