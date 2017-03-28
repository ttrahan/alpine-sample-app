FROM mhart/alpine-node:latest 

ADD . /app

RUN cd /app && npm install

EXPOSE 80

ENTRYPOINT ["/nodejs/bin/npm", "start"]

