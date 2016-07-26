FROM debian:jessie

RUN  apt-get update \
  && apt-get install -y \
     transmission-cli \
     transmission-common \
     transmission-daemon \
  && rm -rf /var/lib/apt/lists/*

COPY settings.json /root/.config/transmission-daemon/settings.json
COPY transmission.sh /usr/local/bin/transmission.sh

VOLUME ["~/Downloads"]

EXPOSE 9091

ENTRYPOINT ["transmission.sh"]
