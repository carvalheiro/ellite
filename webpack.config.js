
const { CleanWebpackPlugin } = require('clean-webpack-plugin')
var paths = require('./config/paths.js')
var alias = require('./config/alias')
var development = process.env.NODE_ENV === 'development'

const fs = require('fs')

class MetaInfoPlugin {
  constructor (options) {
    this.options = { filename: 'meta.json', ...options }
  }

  apply (compiler) {
    compiler.hooks.done.tap(this.constructor.name, stats => {
      const metaInfo = {
        // add any other information if necessary
        hash: stats.hash
      }
      const json = JSON.stringify(metaInfo)
      return new Promise((resolve, reject) => {
        fs.writeFile(this.options.filename, json, 'utf8', error => {
          if (error) {
            reject(error)
            return
          }
          resolve()
        })
      })
    })
  }
}



module.exports = {
  mode: 'development',
  devtool: development ? 'cheap-eval-source-map' : 'none',
  context: paths.root,
  entry: [
    './src/images/index.js',
    './src/styles/index.scss',
    './src/scripts/index.js'
  ],
  output: {
    filename: 'js/bundle.js',
    path: paths.assets,
    publicPath: '/assets/',
    chunkFilename: '[id].[hash].bundle.js'
  },
  devServer: {
    contentBase: paths.dist,
    publicPath: 'http://localhost:3000/assets/',
    port: 3000,
    open: false,
    writeToDisk: false,
    headers: {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, PATCH, OPTIONS',
      'Access-Control-Allow-Headers': 'X-Requested-With, content-type, Authorization'
    },
    proxy: {
      '**': {
        path: /./,
        target: 'http://ellite.localhost/',
        changeOrigin: true,
        headers: {
          'X-Dev-Server-Proxy': 'http://ellite.localhost/',
          'x-dev-server-url': 'http://localhost:3000/'
        }
      }
    }
  },
  resolve: {
    alias
  },
  module: {
    rules: [
      {
        test: /\.js?$/,
        exclude: /node_modules/,
        use: [{
          loader: 'babel-loader'
        }, {
          loader: 'eslint-loader'
        }],
        include: paths.src,
      }, {
        test: /\.(scss|css)$/i,
        use: [{
          loader: 'file-loader',
          options: {
            name: 'main.css',
            outputPath: 'css'
          }
        }, {
          loader: 'extract-loader'
        }, {
          loader: 'css-loader',
          options: {
            importLoaders: 2
          }
        }, {
          loader: 'postcss-loader'
        }, {
          loader: 'resolve-url-loader',
          options: {
            sourceMap: true
          }
        }, {
          loader: 'sass-loader',
          options: {
            sourceMap: true
          }
        }
        ]
      }, {
        test: /\.(png|svg|jpg|gif)$/,
        loader: 'file-loader',
        exclude: /src\/fonts/,
        options: {
          outputPath: 'images',
          name: '[name].[ext]'
        }
      }, {
        test: /\.(eot|woff|woff2|ttf)/,
        exclude: /src\/images/,
        use: [{
          loader: 'file-loader',
          options: {
            outputPath: 'fonts',
            name: '[name].[ext]'
          }
        }]
      }
    ]
  },
  plugins: [
    // new BrowserSyncPlugin(
    //   {
    //       proxy: proxyUrl,
    //       files: [
    //           {
    //               match: [
    //                   '**/*.php'
    //               ],
    //               fn: function (event, file) {
    //                   if (event === 'change') {
    //                       const bs = require('browser-sync').get('bs-webpack-plugin')
    //                       bs.reload()
    //                   }
    //               }
    //           }
    //       ]
    //   }, {reload: false}),
    new MetaInfoPlugin({ filename: 'dist/assets/version.json' }),
    new CleanWebpackPlugin(),
  ]
}
