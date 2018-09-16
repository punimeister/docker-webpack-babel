/*************************************************
 * webpack.dev.js
 * @link https://webpack.js.org/configuration/
 ************************************************/

const merge = require('webpack-merge');
const common = require('./webpack.common');

module.exports = merge(common, {
  mode: 'development',
  output: {
    filename: process.env.OUT_FILE,
  },
  devtool: 'source-map',
  watch: true,
  watchOptions: {
    poll: 500,
    ignored: /node_modules/,
  },
});
