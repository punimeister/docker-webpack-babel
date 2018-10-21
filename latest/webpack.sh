#! /bin/sh
if [ ! -e /app/.babelrc ]; then
  cp /tmp/.babelrc /app/.babelrc
fi
if [ ! -e /app/package.json ]; then
  cp /tmp/package.json /app/
fi
if [ ! -e /app/webpack.config.js ]; then
  cp /tmp/webpack.config.js /app/
fi
yarn install --no-progress
yarn start
