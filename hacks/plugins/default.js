console.log('check');

var idIndex = 0;
var random = 'ciajodij';

function identify(el) {
  var id = random + idIndex++;
  el.setAttribute('id', id);
  id = '#' + id;
  return id;
}

/**
 * Get page metadata
 */

function info() {
  var title = document.title;
  var description = meta('description');
  var keywords = meta('keywords');
  keywords = keywords
    ? keywords.split(/\s+/g)
    : [];
  var h1 = document.querySelector('h1');
  if (h1) h1 = h1.textContent.trim();

  var data = {
    title: title,
    description: description,
    keywords: keywords,
    h1: h1
  };

  return data;
}

/**
 * Get meta description.
 */

function meta(name) {
  var el = document.querySelector('meta[name="' + name + '"]');
  return el
    ? el.getAttribute('description').trim()
    : null;
}

function show(statements) {
  return Statement.format(statements);
}

function query(selector) {
  return [].slice.call(document.querySelectorAll(selector));
}

function capture(source) {
  window.addEventListener('keypress', function(e){
    // pressed 'c'
    if (99 != e.keyCode) return;

    chrome.runtime.sendMessage({
      type: 'copy',
      text: show(source())
    });
  });
}

/**
 * Model statement.
 */

function Statement(name, args) {
  if (!(this instanceof Statement)) {
    var args = [].slice.call(arguments, 1);
    return new Statement(name, args);
  }

  this.children = [];
  this.name = name;
  this.args = args;
}

/**
 * Build tree of statements.
 */

Statement.prototype.nest = function(statement){
  this.children.push(statement);
  return this;
};

/**
 * Transform set of statements to string.
 */

Statement.format = function(statements, indent){
  indent = indent || '';
  return statements.map(function(statement){
    var str = indent + statement.name;
    if (statement.args && statement.args.length) {
      str = str + ' ' + statement.args.join(', ');
    }
    if (statement.children.length) {
      str = str + '\n' + Statement.format(statement.children, indent + '  ');
    }
    return str;
  }).join('\n\n');
};
