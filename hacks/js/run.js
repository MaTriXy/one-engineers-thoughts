
var model = require('./m');

_import('./example.m');

var usages = find('usage');
print(usages);

/**
 * Find top-level terms (statments/records?) by name.
 */

function find(name) {
  var result = [];
  model.files.forEach(function(file){
    file.terms.forEach(function(term){
      if (name == term.name) {
        result.push(term);
      }
    });
  });
  return result;
}

function _import(path) {
  require(path);
}

function print(structure) {
  console.log(JSON.stringify(structure, null, 2));
}
