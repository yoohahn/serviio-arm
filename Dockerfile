FROM lsioarmhf/serviio-aarch64:109

ARG SERVIIO_VER="1.10.1"

RUN rm -rf /app/serviio && \
  mkdir -p /app/serviio && \
  curl -o /tmp/serviio.tar.gz -L http://download.serviio.org/releases/serviio-$SERVIIO_VER-linux.tar.gz && \
  tar xf /tmp/serviio.tar.gz -C /app/serviio --strip-components=1 && \
  rm -rf /tmp/*

EXPOSE 23423/tcp 23424/tcp 8895/tcp 1900/udp
VOLUME /config /transcode
