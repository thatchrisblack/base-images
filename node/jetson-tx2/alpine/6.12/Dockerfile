# AUTOGENERATED FILE
FROM resin/jetson-tx2-alpine-buildpack-deps:latest

ENV NODE_VERSION 6.12.3

# Install dependencies
RUN apk add --no-cache libgcc libstdc++ libuv libcrypto1.0 libssl1.0

RUN curl -SLO "http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz" \
	&& echo "2c337e493f87d3bc54e0562e9a665f44de0703e1a10ff479d5609487e4f4783e  node-v6.12.3-linux-alpine-aarch64.tar.gz" | sha256sum -c - \
	&& tar -xzf "node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz" -C /usr/local --strip-components=1 \
	&& rm "node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz" \
	&& npm config set unsafe-perm true -g --unsafe-perm \
	&& rm -rf /tmp/*

CMD ["echo","'No CMD command was set in Dockerfile! Details about CMD command could be found in Dockerfile Guide section in our Docs. Here's the link: http://docs.resin.io/deployment/dockerfile"]
