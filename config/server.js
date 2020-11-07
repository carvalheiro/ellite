const paths = require('./paths')
const path = require('path')
const webpack = require('webpack')
const WebpackDevServer = require('webpack-dev-server')
const webPackConfigDev = require(path.join(paths.root, 'webpack.config.js'))

const compiler = webpack(webPackConfigDev)

const port = 3000

const server = new WebpackDevServer(compiler, webPackConfigDev.devServer)

server.listen(port)

console.info('==> Wait: compiling on port %s', port)
