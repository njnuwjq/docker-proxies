#!/bin/bash
#
# start.sh
# Copyright (C) 2016 tinyproxy <tinyproxy@gmail.com>
#
# Distributed under terms of the MIT license.
#


function START_SSLOCAL {
    echo "start sslocal"
    SSLOCAL=$(which shadowsocks-local)
    ${SSLOCAL} \
        -s "${SHADOWSOCKS_SERVER}" \
        -p "${SHADOWSOCKS_PORT}" \
        -m "${SHADOWSOCKS_CIPHER}" \
        -k "${SHADOWSOCKS_PASSWORD}" \
        -t "${SHADOWSOCKS_TIMEOUT}" \
        -l "1080" -b "0.0.0.0"

}


function START_POLIPO {
    echo "start polipo"
    /usr/bin/polipo daemonise=false socksParentProxy=localhost:1080 socksProxyType=socks5 proxyAddress=0.0.0.0 logFile=/dev/stderr
}

function HELP {
    cat <<'EOF'
USAGE:
  bash start.sh sslocal # startup sslocal
  bash start.sh polipo  # startup polipo

EOF
}


case $1 in 
    sslocal)
        START_SSLOCAL
        ;;
    polipo)
        START_POLIPO
        ;;
    *)
        HELP
        ;;
esac
