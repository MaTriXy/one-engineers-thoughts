
Introduce bugs into your code on purpose, for fun and games.

```
var bug = require('bug');
bug.memoryLeak();
bug.memoryLeakInModule();
```

Run it through an obscurifier so it's hard to understand:

```
$ bug input.js
var x = (function({}))
;x.si();x.i1();
```

So you can test against common bugs.

And so you can scare new people away if you want haha. Make development setup really hard for them, like the old times. Randomly delete files in the repo. Etc.

This way, you can test under bad conditions, how to recover from them and such.
