FROM mhart/alpine-node:0.10

RUN apk add --update \
    bash \
    git \
    openssh-client \
    sudo \
    python

ADD . /app

RUN cd /app && npm install

EXPOSE 80

ENTRYPOINT ["/nodejs/bin/npm", "start"]
