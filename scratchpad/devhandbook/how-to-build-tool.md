
## How to Make a Node Module that can Create a File

<!-- this could then be moved to the "how to build tool" section -->

<!--
/tool
/tool/file-uploader
/tool/file-server
/tool/file-server/in/node
/tool/image-host
-->

<!-- get people started on building their own module if they want
 make them look good to their company -->

If you wanted to create your own node module for this, you could start with:

```js
var fs = require('fs');

module.exports = function(path){
  return fs.writeFileSync(path);
};
```

Then you could use that like this:

```js
var create = require('./create/file');

create('/tmp/example.txt', 'Hello World');
```

Then add some tests perhaps:

```js
var expected = create('/tmp/example.txt', 'Hello World');
assert(expected, 'Hello World');
```

<!-- showed them how to build abstractions
 maybe all of the modules are consistent, so they can be used together -->
