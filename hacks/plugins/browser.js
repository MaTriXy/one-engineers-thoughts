
// var typeOf = require('component/type');
var api = [];

function getApis(data) {
  var obj = data.value;
  var name = data.name;
  if (!obj) return;
  try {
    if (obj.__api_already_processed__) return;
    Object.defineProperty(obj, '__api_already_processed__', { value: true, enumerable: false });
  } catch (e) { return; }

  try {
    if (obj.constructor) {
      if (obj.constructor != Function && obj.constructor != Object) {
        if (obj.constructor && obj.constructor.__api_already_processed__) return;
      }
      Object.defineProperty(obj.constructor, '__api_already_processed__', { value: true, enumerable: false });

      for (var key in obj.constructor) {
        try {
          addApi(obj.constructor.name, key, obj.constructor[key]);
        } catch (e){}
      }
    }
  } catch (e) {}

  console.log(name);

  for (var key in obj) {
    if ('constructor' == key) continue;
    try {
      addApi(name, key, obj[key]);
    } catch (e){}
  }
}

function addApi(name, key, value) {
  api.push(record(name, key, value));

  switch (typeof value) {
    case 'function':
      // only if it's a constructor?
      if (name.match(/^[A-Z]/)) {
        queue.push({ name: key, value: value });
      }
      break;
    case 'object':
      if (value) {
        queue.push({ name: name + '.' + key, value: value });
      }
      break;
  }
}

function record(sourceName, propName, value) {
  var type = typeof(value);

  return sourceName + '.' + propName;
}

var queue = [ { name: 'window', value: window } ];
while (queue.length) getApis(queue.shift());
