FROM resin/am571x-evm-alpine-buildpack-deps:3.7-curl

RUN apk add --update \
		bzr \
		git \
		mercurial \
		openssh-client \
		subversion \
	&& rm -rf /var/cache/apk/*
