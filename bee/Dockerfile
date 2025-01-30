##############
# Base image # 
##############

FROM debian:11-slim as base

ARG TARGETARCH
ARG UPSTREAM_VERSION

# Get bee v2.4.0
ENV DOWNLOAD_URL https://github.com/ethersphere/bee/releases/download

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates wget; \
  wget $DOWNLOAD_URL/$UPSTREAM_VERSION/bee-linux-${TARGETARCH:-amd64} -O /usr/local/bin/bee && \
  chmod +x /usr/local/bin/bee 

FROM debian:11-slim
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates; \
  apt-get clean; \
  rm -rf /var/lib/apt/lists/*; \
  groupadd -r bee --gid 999; \
  useradd -r -g bee --uid 999 --no-log-init -m bee;

# make sure mounted volumes have correct permissions
RUN mkdir -p /home/bee/.bee && chown 999:999 /home/bee/.bee

# Get the binary from the base 
COPY --from=base /usr/local/bin/bee /usr/local/bin/bee

COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/bee && \
    chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 1633 1634
USER bee
WORKDIR /home/bee
VOLUME /home/bee/.bee

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
