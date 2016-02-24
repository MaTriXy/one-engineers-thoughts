
<!-- this is an example, whereas api docs are a guide -->

# Create File with Node.js

```js
var fs = require('fs');

var path = '/tmp/example.txt';

// sync (robust example)
fs.writeFileSync(path, 'utf8');
// async
fs.writeFile(path, function(){
  console.log('created')
});
```

<!-- if that's not enough, link to detailed docs -->

Detailed API docs:

- [fs.writeFileSync](/node/fs.writeFileSync)
- [fs.writeFile](/node/fs.writeFile)

fs.writeFile and fs.writeFileSync both effectively do the same thing. In here we'll just use fs.writeFileSync to keep it simple.

## Notes

<!-- this is essentially a tutorial on workflow when creating images [doing action] 
Tells you common [situations] you'll run into, when you'll need to create files... When you teach them about workflow, you are improving them.
-->

On node, creating files is super easy. You can create [images], [videos], stream them, and do all kinds of things with them.

```js
createVideo();
```

```js
createImage();
```

<!-- something like this gets them excited. It opens their mind about what other possible things they can do once they learn how to do this. -->

<!-- maybe brief tutorial on workflow? -->

So when you create files, you can also create them using `fs.open`. After you create them, you want to make sure to figure out when to get rid of them. So in node, you want to remove them. You can run into problems with this if you have a lot of load, so you can come to that later.

<!-- how this skill will interplay with other common actions? -->

After tests, it's helpful to clear the disk, so it's a fresh slate.

<!-- maybe show sort of an example app, how this might fit into a larger system! -->

So if you're using express, and want to create files, you might want to do this:

```js
app.use()
```

Here's [more info on that](/node/create/file/with/http).

<!-- so it's like, helping them build common features, this is part of a larger feature -->

<!-- would need to have a model of building these things potentially, which would mean we could actually have pages showing "how to build a web server with express", or "how to build a file uploader in node.js". Essentially, those are tutorials about creating products in a language, with a set of libraries. -->

If you build a file server, you want to do this and that.

If you ever want to build an image uploader, then you'll probably want to be writing some files, and then you want to start getting very specific about performance.

<!-- show common log output -->
<!-- show common errors -->

If you try to create a file and get this next error, it's probably b/c the file already exists:

```js
EIDENT 0
```

That's just an [exit escape code](/linux/escape-code/EIDENT), but not very helpful.

---

Actions can occur in a set of situations.

```
occur action, in situation
```

This gives you a list of possible ways you could use the action. So then, you kind of have a rough plot. You have a set of actions, they are all very different, but you can make them a common thread.

This means actions all have different effects. And they act on different objects. So you can have a page for each object/action combination that makes sense.

The situations software actions will be used in are in software _applications_. So we need to know the types of software applications, and the types of actions.

Then those are the sort of situations. Then we think about the actual experience of actually _building_ this thing. What is it like to write the tests. Quick tip here and there on how to stay motivated. Shout outs potentially to specific repos or people for their work.

So then you can kind of create a story, but not a fairtail story. Just a story about building an app:

## Story About Building a File Server, focusing on File Create

<!-- so basically a day in the life of a software engineer, with different personalities for different software engineer types. That way it seems like these different people are really actually different. -->

So you start one day at work and need to add that image uploader for your cool app. If your company uses tests, might want to start with a test. If you're just getting started, then you can skip the tests.

So you add file create:

```
fs.writeFileSync(path);
```

Sweet, it works!

Okay so next, we want to try and make it dynamic and plug it into our app.

```js
var http = require('http');
var server = http.createServer();
server.on('request', handle);

function handle() {

}
```

[Check out create http server if that would help].

Nice, we now made the connection. Woot. Now we can just make it save:

```js
function handle() {
  fs.writeFileSync(path, code);
}
```

This will introduce security problems if just directly copied, so beware.

<!-- Then you get into a problem. -->

Okay so it's pretty late at the office, and you don't want to deal with this anymore. Forget it haha, just do what you need to and fs.writeFileSync(path). You can write the tests tomorrow and ask your boss.

<!-- ah, that's it! It's basically different software engineers going through the experience of implementing some feature, and then describing their experience as a story!! 
Then the readers are basically getting to know these characters and their personalities. So basically, just need a model of personality, and model of how one personality can get to know another personality. If personality is sum of their typical actions in typical situations, then perhaps it's learning the patterns of actions in situations directly through experience. This way, you can _relate_ to the person, and then learn from their mistakes! Then you are _really_ teaching people. They are _really_ gaining value.
-->

<!-- MODEL OF PERSONALITY: BDI -->

<!-- so this is at the intersection of the human problem, and a specific computational action. So need to find which computational actions can occur in a human problem, and then tell story of human problem using that action. -->

<!-- then we can start adding in pictures and such, like of coffee spills, where one coder is very artsy and loves to photograph, and so sometimes posts photos. And another one likes to meet people, and stuff like that. -->

## Some Thoughts on Creating a Node Module for this

...
