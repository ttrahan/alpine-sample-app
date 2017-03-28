FROM jeanblanchard/alpine-glibc:latest

RUN apk add --no-cache --update \
    bash \
    coreutils \
    git \
    openssh-client \
    sudo \
    python

ADD . /app

RUN cd /app && npm install

EXPOSE 80

ENTRYPOINT ["/usr/bin/npm", "start"]
