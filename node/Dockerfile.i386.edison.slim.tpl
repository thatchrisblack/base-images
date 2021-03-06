# AUTOGENERATED FILE
FROM #{FROM}

ENV NODE_VERSION #{NODE_VERSION}

RUN buildDeps='curl build-essential python' \
	&& set -x \
	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl -SLO "#{BINARY_URL}" \
	&& echo "#{CHECKSUM}" | sha256sum -c - \
	&& tar -xzf "node-v$NODE_VERSION-linux-#{TARGET_ARCH}.tar.gz" -C /usr/local --strip-components=1 \
	&& rm "node-v$NODE_VERSION-linux-#{TARGET_ARCH}.tar.gz" \
	&& npm install mraa@$MRAA_VERSION \
	&& npm cache clear \
	&& npm config set unsafe-perm true -g --unsafe-perm \
	&& apt-get purge -y --auto-remove $buildDeps \
	&& rm -rf /tmp/*

CMD ["echo","'No CMD command was set in Dockerfile! Details about CMD command could be found in Dockerfile Guide section in our Docs. Here's the link: http://docs.resin.io/deployment/dockerfile"]
