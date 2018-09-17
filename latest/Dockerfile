FROM node:8.11-alpine

COPY package.json webpack.config.js webpack.sh /app/

WORKDIR /app

RUN mkdir -m 644 webpack

ENV MODE='development' \
    ENTRY='' \
    OUT_DIR='' \
    OUT_FILE=''

CMD sh webpack.sh
