/*************************************************
 * webpack.prod.js
 * @link https://webpack.js.org/configuration/
 ************************************************/

const merge = require('webpack-merge');
const common = require('./webpack.common');

module.exports = merge(common, {
  mode: 'production',
  output: {
    filename: process.env.OUT_FILE.replace(/(.+)\.js$/, '$1.min.js'),
  },
});
