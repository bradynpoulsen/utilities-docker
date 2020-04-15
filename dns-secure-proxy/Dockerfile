FROM alpine:edge

COPY entrypoint.sh /srv/entrypoint.sh
RUN set -ex \
    && apk add --no-cache tini dnsmasq dnscrypt-proxy \
    && chmod +x /srv/entrypoint.sh \
    && mkdir -p /etc/hosts.d \
    && chmod a+w /etc/hosts.d

ENV DNSMASQ_OPTS ""
ENV DNSCRYPT_PROXY_OPTS ""

ENTRYPOINT ["tini", "--", "/srv/entrypoint.sh"]
