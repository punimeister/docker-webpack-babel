#! /bin/sh
if [ ! -e /app/webpack/package.json ]; then
  cp package.json webpack/
fi
if [ ! -e /app/webpack/webpack.config.js ]; then
  cp webpack.config.js webpack/
fi
cd webpack
yarn install --no-progress
npx webpack
