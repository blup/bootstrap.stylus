
/**
 * Module dependencies.
 */

var connect = require('connect')
  , stylus = require('stylus')
  , bootstrap = require('../');

function compile(str, path) {
  return stylus(str)
    .set('filename', path)
    .use(bootstrap());
}

connect()
  .use(connect.logger('dev'))
  .use(stylus.middleware({ compile: compile, src: __dirname }))
  .use(connect.static(__dirname))
  .listen(3000);

console.log('Connect server listening on port 3000');