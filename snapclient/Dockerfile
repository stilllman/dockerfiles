# docker run --rm 
#            --name snapclient 
#            --device=/dev/snd 
#            stilllman/docker-snapclient

FROM debian:jessie
RUN  apt-get update \
  && apt-get install -y \
     wget \
  && rm -rf /var/lib/apt/lists/*
ENV  snapcast_version 0.7.0
RUN  wget https://github.com/badaix/snapcast/releases/download/v${snapcast_version}/snapclient_${snapcast_version}_amd64.deb
RUN  dpkg -i snapclient_${snapcast_version}_amd64.deb \
  ;  apt-get update \
  && apt-get -f install -y \
  && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["snapclient"]
CMD ["-h", "snapserver"]
