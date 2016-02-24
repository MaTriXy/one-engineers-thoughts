
http://wiki.ecmascript.org/doku.php?id=harmony:modules

## experiments

- module rules
  - import rules
  - export rules
- dsl rules
  - https://github.com/segmentio/integration-zendesk/blob/master/lib/index.js
- function rules
  - function argument rules
  - function segmentation rules (grouping things into logical chunks)
    - return early instead of nesting if's
- object rules
  - data/json rules
- comment rules
  - inline
  - block
- assignment rules
- variable rules
- import rules

```coffee
style module constructor
  order
    imports
    exports
    statics
    constructor
    mixins
    functions prototype
    functions standalone

style module plugin
  order
    imports
    exports
    statics
    plugin
    standalones
```

```coffee
rule module imports
  order
    by line length
    then by alphabet
```

```coffee
syntax module import
  assignment
    right
      match require
```

```coffee
syntax module imports
  property imports, set syntax module import
  body
    /**
     * Module dependencies.
     */
    
    {{ imports }}

syntax module import
  property name
  property path
  body
    var {{ name }} = require({{ path }});
```

```coffee
syntax module export
  property name
  body

    /**
     * Expose `{{ name }}`.
     */

    module.exports = {{ name }};
```

```coffee
syntax statics
  body

    /**
     * Statics.
     */
    
    {{ statics }}

syntax static
  property value
  property name
  body
    var {{ name }} = {{ value }};
```

```coffee
syntax constructor
  property body
  property name
  body

    /**
     * Initialize a new `{{ name }}`.
     *
     * @api public
     */
    
    function {{ name }}({{ arguments }}) {
      {{ body constructor }}
    }

syntax body constructor
```

```coffee
syntax function prototype
  property arguments
  property method
  property name
  body
    {{ comment block }}

    {{ name }}.prototype.{{ method }} = function({{ arguments }}){
      {{ body function }}
    };
```

```coffee
syntax function standalone
  body
    {{ comment block }}

    function {{ name }}({{ arguments }}) {
      {{ body function }}
    }
```

```coffee
syntax comment block
  property description, optional
  property params
  property return
  property title
  property api
  body
    /**
     * {{ title }}
     * {{ optional description }}
     * {{ params }}
     * {{ return }}
     * {{ api }}
     */

syntax comment description
  body
    {{ line }}
    {{ text }}
    {{ line }}

syntax comment param
  property description, optional
  property name
  property type
  body
    @param \{{{ type }}\} {{ name }} {{ description }}
```

### function styles

First, define the AST structure of things like:

- imports (variable declaration with `require` on the right side)
- constructors (typically have capital letter, maybe an instanceof check)
- ternaries
- objects

Then those are higher level structures on top of the AST. Then you can say how you want those ordered and styled.

For things like converting this:

```js
var data = {
  x: 10
};
```

to this:

```js
var x = 10;
var data = {
  x: x
};
```

How do you do that?

You say you have an object, and want all the values to be named after the keys. So add variables named after the key, set to the value. Then later, the formatter will order the variables by length (and making sure dependent variables come after).

## module types

- constructor
- executable
- plugin
- util
- utils
- exports
- data / json
- extend class constructor `var Zendesk = module.exports = Integration('Zendesk')`

## variable names

- callbacks as `fn`
- options as `opts`
- `n` for any length thing
- `i`
- `arr` for array
- `str` for string

## single lines

```
if (err) return fn(err);
if (!(this instanceof X)) return new X(arguments);
```

## examples

```coffee
syntax set variable
  order binding, length, alphanumeric
```

```coffee
syntax object keys
  order length, alphanumeric
```

```coffee
style one call(method), per(line)
  # separate member expression into parts
  # introduce variable if necessary
```

```js
// from
reactive(el, {}, {
  graph: graph,
  list: list,
  pause: pause,
  play: play
}).use(child);

// to (via sort)
reactive(el, {}, {
  graph: graph,
  pause: pause,
  list: list,
  play: play
}).use(child);

// to (one method call per line)
var view = reactive(el, {}, {
  graph: graph,
  pause: pause,
  list: list,
  play: play
});
view.use(child);
```

---

Deeply nested calls can only occur in variable declarations. They shouldn't appear as values for objects, or passed directly as arguments. Arguments to functions can be functions with arguments (as in DSL methods).

```js
// from
fn(null, ctx.db.events.findAll(project.id, new Date()))

// to (should be able to somehow figure out this variable should be called `events`, by inspecting the return types and such)
// - extract out deeply nested expression
var events = ctx.db.events.findAll(project.id, new Date());
fn(null, events);

// to
// - recursively extract out deeply nested expressions, or `new X`.
var projectId = project.id;
var date = new Date();
var events = ctx.db.events.findAll(projectId, date);
fn(null, events);
```

```coffee
style arguments function
  recursively
    extract expression member # simplifies
    extract expression new
```

---

```js
// from
function normalize(events) {
  return events.map(function(event){
    return {
      thisMonth: event.count || 0,
      name: event.event,
      isActive: event.isActive ? 'Yes' : 'No'
    }
  });
}

// to
// - add semicolon to object
// sort keys
// extract values to variables named after keys
function normalize(events) {
  return events.map(function(event){
    var isActive = event.isActive ? 'Yes' : 'No';
    var thisMonth = event.count || 0;
    var name = event.event;
    return {
      thisMonth: thisMonth,
      isActive: isActive,
      name: name
    };
  });
}

// to
// - set return object to variable
// - return name instead of object
function normalize(events) {
  return events.map(function(event){
    var isActive = event.isActive ? 'Yes' : 'No';
    var thisMonth = event.count || 0;
    var name = event.event;
    var event = {
      thisMonth: thisMonth,
      isActive: isActive,
      name: name
    };
    return event;
  });
}

// to
//   - add name to function
//   - isolate function, use function name in original place
//   - place standalone function below
function normalize(events) {
  return events.map(simplify);

  function simplify(event) {
    var isActive = event.isActive ? 'Yes' : 'No';
    var thisMonth = event.count || 0;
    var name = event.event;
    var event = {
      thisMonth: thisMonth,
      isActive: isActive,
      name: name
    };
    return event;
  }
}
```

- trailing semicolons

```js
module.exports = function(el){
  function k(e, fn){ k.handle(e, fn) };
  k._handle = bind(k, proto.handle);
  k._clear = bind(k, proto.clear);
  event.bind(el, 'keydown', k._handle, false);
  event.bind(el, 'keyup', k._handle, false);
  event.bind(el, 'keyup', k._clear, false);
  event.bind(el, 'focus', k._clear, false);
  for (var p in proto) k[p] = proto[p];
  k.listeners = [];
  k.active = 0;
  k.el = el;
  return k;
};
```

- group related methods (`event.bind`)
- put `for in` on single line if it can fit
- object variable assignments order by length
- order the following groups of things by length
  - `obj.key = value`
  - `var key = value`
  - any group of things

## special cases

- don't separate keys if all the values are the same and they are all simple types

```js
// yay
var modifiers = {
  224: 'command',
  91: 'command',
  93: 'command',
  16: 'shift',
  17: 'ctrl',
  18: 'alt'
};
```

## find groups of code lines in a function

```js

/**
 * Handle the given `KeyboardEvent` or bind
 * a new `keys` handler.
 *
 * @param {String|KeyboardEvent} e
 * @param {Function} fn
 * @api private
 */

exports.handle = function(e, fn){
  var ignore = this.ignore;
  var event = e.type;
  var code = e.which;

  // bind
  if (fn) return this.bind(e, fn);

  // modifiers
  var mod = modifiers[code];
  if ('keydown' == event && mod) {
    this['super'] = exports['super'] == mod;
    this[mod] = true;
    this.modifiers = true;
    this.active++;
    return;
  }

  // ignore
  if (ignore && ignore(e)) return;

  // listeners
  var all = this.listeners;

  // match
  for (var i = 0; i < all.length; ++i) {
    var invoke = true;
    var obj = all[i];
    var seq = obj.seq;
    var mods = obj.mods;
    var fn = seq || obj.fn;

    if (!seq && code != obj.code) continue;
    if (event != obj.event) continue;
    if (this.active != obj.mods.length) continue;

    for (var j = 0; j < mods.length; ++j) {
      if (!this[mods[j]]) {
        invoke = null;
        break;
      }
    }

    invoke && fn(e);
  }
};
```

- groups are found by some of these `tactics`:
  - `if` statements, if `return` in `if` statement
  - set of variable declarations
  - for loop
- seems like only do grouping if function is over 10 lines or so.
- put string first in conditional, `if ('string' == typeof x)`.

Other places to look for styles:

- https://github.com/yields/k/blob/master/lib/proto.js

```js
// from
Logger.prototype.padleft = function(type){
  var len = longest(this.types).length;
  return Array(this.indent + 1 + len - type.length).join(' ');
};

// to
Logger.prototype.padleft = function(type){
  var indent = this.indent;
  var types = this.types;
  var len = longest(types).length;
  var count = indent + 1 + len - type.length;
  var result = Array(count).join(' ');
  return result;
};
```

```js
function store(key, value) {
  var length = arguments.length;
  if (0 == length) return all();
  if (2 <= length) return set(key, value);
  if (1 != length) return;
  if (null == key) return storage.clear();
  if ('string' == typeof key) return get(key);
  if ('object' == typeof key) return each(key, set);
}
```

- set of `if` statements
- set of variables (only 1)

- https://github.com/giokincade/astronaut

## JS AST

### function body

Function body is a _set of statements_. Therefore, group the set of statements so variables are first.

### object expression

[ObjectExpression](https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey/Parser_API#Functions)

An object is a set of properties, and a Property is an object with `key` and `value`, with also a `kind` for `init` or `get` or `set`. We're mainly interested in `init` ones.

```coffee
style expression object
  sort set(properties), by length, ...
  isolate values
    to variables
    place above

style statement block
  isolate variables, to top

style expression arguments
```

## overall

- block groups (prototype methods + comments)
- block group ordering
- statement groups
- statement group ordering
- statement syntax

## conditionals

Would have to really dig in and fine-tune the styles for ternary conditionals like these.

```js
Page.prototype.fullName = function(){
  var category = this.category();
  var name = this.name();
  return name && category
    ? category + ' ' + name
    : name;
};

Page.prototype.fullName = function(){
  var category = this.category();
  var name = this.name();
  var both = name && category;
  return both
    ? category + ' ' + name
    : name;
};

Page.prototype.fullName = function(){
  var category = this.category();
  var name = this.name();
  if (name && category) return category + ' ' + name;
  return name;
};

Page.prototype.fullName = function(){
  var category = this.category();
  var name = this.name();
  var both = name && category;
  if (both) return category + ' ' + name;
  return name;
};
```

```js
Page.prototype.event = function(name){
  return name
    ? 'Viewed ' + name + ' Page'
    : 'Loaded a Page';
};

// Don't want to isolate variables because it will evaluate unnecessarily.
Page.prototype.event = function(name){
  var specific = 'Viewed ' + name + ' Page';
  var generic = 'Loaded a Page';
  return name
    ? specific
    : generic;
};

Page.prototype.event = function(name){
  if (name) return 'Viewed ' + name + ' Page';
  return 'Loaded a Page';
};
```

```js
Group.prototype.properties = function(){
  return this.field('traits')
    || this.field('properties')
    || {};
};

Group.prototype.properties = function(){
  var traits = this.field('traits');
  if (traits) return traits;
  var properties = this.field('properties');
  if (properties) return properties;
  return {};
};
```

### easier to put breakpoints with explicit variables too

So, discrete variables for everything is better for debugging.

```js
// from
Screen.prototype.track = function(name){
  var json = this.json();
  json.event = this.event(name);
  json.timestamp = this.timestamp();
  json.properties = this.properties();
  return new Track(json, this.opts);
};

// to
Screen.prototype.track = function(name){
  var properties = this.properties();
  var timestamp = this.timestamp();
  var event = this.event(name);
  var opts = this.opts;
  // ordering in a U shape haha, how to accomplish that?
  var json = this.json();
  json.event = event;
  json.timestamp = timestamp;
  json.properties = properties;
  var track = new Track(json, opts);
  return track;
};
```

Therefore, there are two different ideal compilations:

- development
- production

Development is easy to debug, so every variable is defined clearly and separately.

Production is minimized so there aren't unnecessary variables being defined.

Ideally, they would be isomorphic.

```js
// from
Track.prototype.subtotal = function(){
  var subtotal = get(this.properties(), 'subtotal');
  var total = this.total();
  var n;

  if (subtotal) return subtotal;
  if (!total) return 0;
  if (n = this.tax()) total -= n;
  if (n = this.shipping()) total -= n;
  if (n = this.discount()) total += n;

  return total;
};

// to
Track.prototype.subtotal = function(){
  var properties = this.properties();
  var subtotal = get(properties, 'subtotal');
  var shipping = this.shipping();
  var discount = this.discount();
  var total = this.total();
  var tax = this.tax();
  var n;

  if (subtotal) return subtotal;
  if (!total) return 0;
  // don't want to mess with the order of these
  if (n = tax) total -= n;
  if (n = shipping) total -= n;
  if (n = discount) total += n;

  return total;
};
```

```js
Track.prototype.products = function(){
  var props = this.properties();
  var products = get(props, 'products');
  return 'array' == type(products)
    ? products
    : [];
};

Track.prototype.products = function(){
  var props = this.properties();
  var products = get(props, 'products');
  var isArray = 'array' == type(products);
  return isArray
    ? products
    : [];
};
```

---

- https://gist.github.com/jeffmo/9690116

```js
{
  type: "Program",
  children: [
    {
      type: "MultiLineComment",
      children: [
        {
          type: "MultiLineCommentStartToken",
          value: "/*",
          loc: {
            start: {
              line: 1,
              col: 1
            },
            end: {
              line: 1,
              col: 2
            },
            range: [
              0,
              2
            ]
          }
        },
```

```coffee
node cst
  property location, location cst
  property value # if this exists, it is a "token" type
  property children # tree structure

location cst
  property range
  property start
    property row # line number
    property column
  property end
    property row
    property column

rule cst
recover bracket...
```
