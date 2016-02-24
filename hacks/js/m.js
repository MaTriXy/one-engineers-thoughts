
/**
 * Module dependencies.
 */

var compile = require('./compile');
var parse = require('./parse');
var model = require('./model');
var fs = require('fs');

/**
 * Expose `model`.
 */

module.exports = model;

/**
 * Add a new extension.
 */

require.extensions['.m'] = build;

/**
 * Build the `m` file.
 */

function build(module) {
  var path = module.filename;
  var string = fs.readFileSync(path, 'utf-8');
  var result = parse(string);
  result = Function('return ' + result)();
  var file = compile(result);
  file.name = path;
  module.exports = file;
  model.add(file);
};
