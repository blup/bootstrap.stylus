
/*!
 * bootstrap-stylus
 */

/**
 * Module dependencies.
 */

var nib = require('nib');

module.exports = function(){
  return function(style){
    style.include(__dirname);
    style.use(nib());
  }
};