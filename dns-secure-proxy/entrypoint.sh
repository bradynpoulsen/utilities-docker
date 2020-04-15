#!/bin/sh
set -e

dnsmasq --no-daemon --addn-hosts /etc/hosts.d/ ${DNSMASQ_OPTS:-} &
dnscrypt-proxy -config /etc/dnscrypt-proxy/dnscrypt-proxy.toml ${DNSCRYPT_PROXY_OPTS:-} &

wait -n