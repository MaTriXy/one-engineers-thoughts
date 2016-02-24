
<!-- this is essentially a guide -->

# fs.writeFileSync

> The node.js API for `fs.writeFileSync`.

```js
var fs = require('fs');
var path = '/tmp/example.txt';
```

<!-- jog their memory about how you can use the method
 provide "commonly related" actions that might be useful, "paired actions". -->

You can pass in an encoding.

```js
fs.writeFileSync(path, 'utf-8');
```

<!-- say the related info next to it, because that's when it's primed. So say "The default is utf-8 too, so you can leave it out." -->

<!-- "so you can leave it out", that is just stating the meaning of the "default is utf-8 too" explicitly, so they know immediately, without having to make the connection, that it they can leave it out. This is an example where you don't want the reader to have to think. You want them to have to engage in experience, but not to have to logically make connections. -->

You can also pass in the [file permissions](/node/type/file-options) you'd typically use like with [`chmod`](/unix/chmod).

```js
fs.writeFileSync(path, { flags: 'r' });
```

To remove a file, use [fs.unlinkSync](/node/remove/file).

```js
fs.unlinkSync(path);
```

By default, it uses utf-8 encoding. This works fine for text files, but if you want to start creating other things like images, use `binary`.

<!-- ah, this also knows the typical development path of a software engineer, and so reveals things to them as if they were brand new to the area, the types of things they would like to solve as they start and explore.
// so it should have a model of a software engineer's motives to learn how to code -->

```js
// create text
fs.writeFileSync(path, 'utf-8', 'Hello');
// create image
fs.writeFileSync(path, 'binary', pixel);
```

You can then check the output on [linux](/linux/print/file) like this:

```bash
ls -la /tmp | grep example.png
```

```
drwxr-xr-x   32 user  staff     1088 Jul 25 14:27 types
```

<!-- That's cool, because it helps them _learn_. It helps them slowly gather the development workflows to _verify your work_. -->

<!-- maybe show a gif of the text editor, then running the command line, then opening the file. A visual verification that it works. Can maybe show some variants too, like creating an image vs. text.-->

<!-- compare to the generic "create file" action,
 show how they can create certain files. -->

You can create [images](/node/create/image), videos, text files, and whatever else you want.

<!-- give tips on common errors if they try to do one type of thing but get a different result than they expected. -->

// helpful line of text, that makes it sound easy. good customer support, plain english
For the simple case, you can just pass in a simple path as a string:

```js
fs.writeFileSync(path);
```

You can also pass in an encoding:

```js
fs.writeFileSync(path, 'utf-8');
// somehow show we got the file, maybe a video/screenshot of seeing the file?
```

// providing extra context on when you might need to use this
If you're just creating text files, utf-8 is all you need, which is the default. If you're doing images though, or videos, you want binary. Here's [more info on the encodings node.js](/node/encoding) supports if you have questions.
// then that page would link to the general encodings, so you slowly get taken to the more general context as you need it.

You can also pass in the encoding as an object:

```js
fs.writeFileSync(path, { encoding: 'utf-8' });
```

## Why this vs. another?

// help them make decisions

You use `fs.writeFileSync` when you don't really have to carry about performance, or you know it's only going to be called locally on one persons computer, so they probably won't ever be writing files more than one at a time.

It's nice also for scripts and stuff like that.

// alternatives
If you want to get more performance, the ideal is `fs.writeFile`. That requires using callbacks, or to wrap and use generators.

## Abstractions

// help them find related tools

Several node modules create an abstraction layer on top of `fs.writeFileSync`. Some of them include:

- x
- y
- z

Here is how you'd do the same thing for them:

```js
var x = require('x');
x.create(path);
```

```js
var y = require('y');
y(path);
```

If you're using `angular` already, then using angular-create would fit well here. Otherwise it seems most people just use `fs.writeFileSync` directly.
