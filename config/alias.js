const path = require('path')
const paths = require('./paths')

module.exports = {
  styles: path.resolve(paths.root, 'src/styles'),
  sc_utils: path.resolve(paths.root, 'src/styles/utils'),
  sc_fonts: path.resolve(paths.root, 'src/styles/fonts'),
  scripts: path.resolve(paths.root, 'src/scripts'),
  modules: path.resolve(paths.root, 'src/scripts/modules'),
  pages: path.resolve(paths.root, 'src/scripts/pages'),
  utils: path.resolve(paths.root, 'src/scripts/utils'),
  structures: path.resolve(paths.root, 'src/scripts/structures'),
  fonts: path.resolve(paths.root, 'src/fonts'),
  images: path.resolve(paths.root, 'src/images'),
}
