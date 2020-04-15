FROM alpine:edge

ENV LOCAL_PORT 53
EXPOSE ${LOCAL_PORT} ${LOCAL_PORT}/udp

RUN apk add --no-cache dnscrypt-proxy

ENTRYPOINT ["dnscrypt-proxy"]
CMD ["-config", "/etc/dnscrypt-proxy/dnscrypt-proxy.toml"]
