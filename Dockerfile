FROM jeanblanchard/alpine-glibc:latest

RUN apk add --no-cache --update \
    bash \
    coreutils \
    git \
    openssh-client \
    sudo \
    python

ADD . /app

ENTRYPOINT ["/home/shippable/cexec/dist/main/main"]
