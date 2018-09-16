/*************************************************
 * webpack.common.js
 * @link https://webpack.js.org/configuration/
 ************************************************/

const path = require('path');

module.exports = {
  entry: process.env.ENTRY,
  output: {
    path: path.resolve(__dirname, process.env.OUT_DIR),
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        options: {
          presets: ['@babel/env'],
        },
      },
    ],
  },
};
