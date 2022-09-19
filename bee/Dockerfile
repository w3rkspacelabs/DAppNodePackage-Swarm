###############
# Build image #
###############

FROM golang:1.17 AS build

ARG TARGETARCH
ARG UPSTREAM_VERSION

WORKDIR /src
RUN git clone https://github.com/rndlabs/bee . && \
    git checkout 16ff1388e0b42a9443b44aa9fe442f11b9dbe681

# RUN ls -alh
# RUN pwd
# # enable modules caching in separate layer
# COPY go.mod go.sum ./
RUN go mod download
COPY . ./

# RUN git apply pushers.patch
RUN make binary

##############
# Base image #
##############

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
COPY --from=build /src/dist/bee /usr/local/bin/bee

COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/bee && \
    chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 1633 1634 1635
USER bee
WORKDIR /home/bee
VOLUME /home/bee/.bee

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]