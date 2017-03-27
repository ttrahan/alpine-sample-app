FROM mhart/alpine-node:latest

RUN apk add --update \
    bash \
    coreutils \
    git \
    openssh-client \
    sudo \
    python \
    py-pip

RUN apk --no-cache add ca-certificates wget \
    && apk update-ca-certificates \
    && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub \
    && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-2.25-r0.apk \
    apk add glibc-2.25-r0.apk

ADD . /app

RUN cd /app && npm install

EXPOSE 80

ENTRYPOINT ["/usr/bin/npm", "start"]
