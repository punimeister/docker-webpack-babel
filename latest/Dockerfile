FROM node:8.11-alpine

COPY webpack.common.js webpack.dev.js webpack.prod.js \
     package.json webpack.sh /app/

WORKDIR /app

RUN yarn install --no-progress

ENV MODE='development' \
    ENTRY='' \
    OUT_DIR='' \
    OUT_FILE=''

CMD sh webpack.sh
