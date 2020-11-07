const path = require('path')

module.exports = {
  root: path.resolve(__dirname, '../'),
  modules: path.resolve(__dirname, '../node_modules'),
  src: path.resolve(__dirname, '../src'),
  dist: path.resolve(__dirname, '../dist'),
  assets: path.resolve(__dirname, '../dist/assets'),
}
