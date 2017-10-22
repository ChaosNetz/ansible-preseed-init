#!/bin/bash
export LC_ALL=C

curl -f -sLi -X "POST" -d @- "https://icvpn1.chaosnetz.org:8989/pxe/lshw/$(hostname)" << CURL_DATA
`echo -ne "$(lshw -json)"`
CURL_DATA
