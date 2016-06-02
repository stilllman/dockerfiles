FROM debian:jessie
RUN  apt-get update
RUN  apt-get install -y \
     wget
RUN  wget -q -O - https://apt.mopidy.com/mopidy.gpg | apt-key add -
RUN  wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/jessie.list
RUN  apt-get update \
  && apt-get install -y \
     mopidy \
     mopidy-spotify
RUN  apt-get install -y \
     python-pip
RUN  pip install Mopidy-Moped

COPY mopidy.conf /root/.config/mopidy/mopidy.conf
COPY mopidy.sh /usr/local/bin/mopidy.sh

EXPOSE 6600 6680
ENTRYPOINT ["/usr/local/bin/mopidy.sh"]
