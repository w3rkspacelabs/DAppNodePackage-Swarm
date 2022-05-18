FROM alpine:3.12 

ARG TARGETARCH
ARG UPSTREAM_VERSION

ENV DOWNLOAD_URL https://github.com/ethersphere/bee/releases/download
ENV GETH_DOWNLOAD_URL https://gethstore.blob.core.windows.net/builds
ENV GETH_VERSION 1.9.24-cc05b050

WORKDIR /home/bee

RUN apk add --update pwgen bash wget && \
  wget $GETH_DOWNLOAD_URL/geth-linux-${TARGETARCH:-amd64}-${GETH_VERSION}.tar.gz && \
  wget $DOWNLOAD_URL/$UPSTREAM_VERSION/bee-linux-${TARGETARCH:-amd64} -O /usr/local/bin/bee && \
  tar -xzvf geth-linux-${TARGETARCH:-amd64}-${GETH_VERSION}.tar.gz geth-linux-${TARGETARCH:-amd64}-${GETH_VERSION}/geth -C /usr/local/bin/ --strip-components 1 && \
  rm -rf geth-linux-${TARGETARCH:-amd64}-${GETH_VERSION}.tar.gz && \
  chmod +x /usr/local/bin/geth && \
  chmod +x /usr/local/bin/bee 


RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
  gosu

RUN addgroup -g 1000 bee \
  && adduser -u 1000 -G bee -s /bin/sh -D bee && \
  mkdir -p /home/bee/.bee && \
  chown -R bee:bee /home/bee

VOLUME /home/bee

COPY run.sh /usr/local/bin/
COPY config.yml /home/bee/

ENTRYPOINT [ "run.sh" ]