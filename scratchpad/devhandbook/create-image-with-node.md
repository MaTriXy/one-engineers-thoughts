
# Create Image with Node.js

```js
var fs = require('fs');

var path = '/tmp/example.png';

// sync (robust example)
fs.writeFileSync(path, 'binary');
// async
fs.writeFile(path, function(){
  console.log('image created');
});
```

## Notes

You can create many different types of images. [Links to them, and quick tips on what to "watch out for"].

Other things you can do with images. You can create them big and small, and optimize them. How can you optimize this whole process if you are editing many?

Image libraries typically rely on external tools like ImageMagick.

If you want to try to deploy this, then you might want to build an image server. Links on how to do that.

// basically then, this section ties images to everything else, so that if they have any of these problems, they can quickly link to them and keep exploring.
// pointing out problems they might have related in the future
// like asking "do you want a drink with that?"

// ad on the side

## Libraries

Here's libraries that deal with creating images.

## Node Module to Create Images

If you wanted to build a node module for creating images, this is basically all you need.

```js
...
```

---

Build personality, and assign them tasks or features to build on a product. Then break the tasks down into a discrete tree, where the leaves are the actual software actions they will need to call.

Then the personality can generate a story of their day as they performed the tasks, focusing on their use of this specific action like `create image` or whatever it was.

So then it's like, you have a team. That team is all blogging about how they do their work. Then it's like, really valuable to coders.

Maybe this personality also tries to execute these actions/tasks. And when they are implemented, then they can "use" it! When they are not implemented, we have a stub that adds some really general experience to the personality, so they can sort of pretend like they know it.

Then that would mean that we actually implement personalities that can build web apps by following instructions!

Then it is just a matter of having them think about what to build, without having me to have to specify it in detail. I basically just review.

This can be part of my workflow, where I:

- jot down actions
- they go into a database, with tasks assigned to them
- personality tries to execute them as part of their "day"
- if it fails, it sends me an email saying it wants to try that
- i can implement it
- it sends a success email

Basically this loop of implementing the required features for the personality to automatically do the work for me!

---

The first page/article can be the first action. There is no experience for the personality yet. This is the first bit of experience they would have. So their story would just be very basic.

Then as we add more actions, they get more experience. They start making the stories better. So a cycle of adding actions, and getting better stories.

After a while, they will be good at writing the stories, and we will have a set of actions that automate the building and deployment of that current blog/app. Then start building little tools people could use, and having the personalities building those.

After that, it would be ready to build other apps.

This means I can start with just a simple personality model, that is capable of gaining experience. Then as it adds more actions, it writes better stories.

So it's like, by the end of a year, I would have a whole personality for generating new apps for me!
