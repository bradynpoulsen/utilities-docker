FROM alpine:edge
RUN apk add --no-cache dnsmasq
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "--no-daemon"]
