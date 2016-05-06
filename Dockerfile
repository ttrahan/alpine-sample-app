FROM mhart/alpine-node:0.10

RUN apk add --no-cache bash

ADD . /app

RUN cd /app && npm install

EXPOSE 80

ENTRYPOINT ["/nodejs/bin/npm", "start"]
