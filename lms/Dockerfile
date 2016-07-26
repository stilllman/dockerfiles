FROM debian:jessie
RUN  apt-get update \
  && apt-get install wget -y \
  && rm -rf /var/lib/apt/lists/*
ENV  squeezeboxserver_version 7.9.0
RUN  wget `wget -q -O - "http://www.mysqueezebox.com/update/?version=${squeezeboxserver_version}&revision=1&geturl=1&os=deb"`
RUN  dpkg -i *.deb \
  ;  apt-get update \
  && apt-get -f install -y \
  && rm -rf /var/lib/apt/lists/*
USER squeezeboxserver
ENTRYPOINT ["squeezeboxserver"]
