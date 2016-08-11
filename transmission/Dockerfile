FROM alpine:3.4

RUN apk add --no-cache transmission transmission-cli transmission-daemon

COPY settings.json /root/.config/transmission-daemon/settings.json
COPY transmission.sh /transmission.sh

VOLUME ["~/Downloads"]

EXPOSE 9091

ENTRYPOINT ["/transmission.sh"]
