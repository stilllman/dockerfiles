FROM debian
RUN  apt-get update \
  && apt-get install -y \
     transmission-cli \
     transmission-common \
     transmission-daemon \
  && rm -rf /var/lib/apt/lists/*
VOLUME ["~/Downloads"]
EXPOSE 9091
ENTRYPOINT ["transmission-daemon", "-f"]
