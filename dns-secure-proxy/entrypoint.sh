#!/bin/sh
set -e

dnsmasq --keep-in-foreground ${DNSMASQ_OPTS:-} &
dnscrypt-proxy -config /etc/dnscrypt-proxy/dnscrypt-proxy.toml ${DNSCRYPT_PROXY_OPTS:-} &

wait -n