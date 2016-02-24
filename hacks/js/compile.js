
/**
 * Expose `compile`.
 */

module.exports = compile;

/**
 * Compile array of words and nested arrays
 * into terms.
 */

function compile(array) {
  var terms = [];
  var stack = [];
  var level = 0;
  for (var i = 0, n = array.length; i < n; i++) {
    buildTerm(array[i], terms);

    function buildTerm(item, children) {
      if (!item) return;
      var hasName = 'string' == typeof item[0];
      if (hasName) {
        var name = item.shift();
        var term = Term(name, item);
        children.push(term);
        stack[level] = term;
      } else {
        // we're indenting.
        var parent = stack[level];
        level++;
        buildTerm(item[0], parent.children);
        level--;
      }
    }
  }
  var file = File(terms);
  return file;
}

function File(terms) {
  if (!(this instanceof File)) return new File(terms);
  this.terms = terms;
}

function Term(name, children) {
  if (!(this instanceof Term)) return new Term(name, children);
  this.name = name;
  this.children = (children || []).map(function(array){
    var name = array.shift();
    var term = Term(name, array);
    return term;
  });
}
