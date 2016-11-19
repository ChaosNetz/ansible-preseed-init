#!/bin/bash
export LC_ALL=C

curl -sLi -X "POST" --cacert "/usr/share/ca-certificates/CAcert/root.crt" -F "lshw=@-" "https://icvpn1.chaosnetz.org:8989/pxe/lshw/$(hostname)" << CURL_DATA
`lshw -json`
CURL_DATA
