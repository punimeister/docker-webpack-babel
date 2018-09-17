FROM node:8.11-alpine

COPY package.json webpack.config.js webpack.sh /tmp/

RUN mkdir -m 644 /app

WORKDIR /app

ENV MODE='development' \
    ENTRY='' \
    OUT_DIR='' \
    OUT_FILE=''

CMD sh /tmp/webpack.sh
