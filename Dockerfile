FROM mhart/alpine-node:latest

RUN apk add --update \
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
