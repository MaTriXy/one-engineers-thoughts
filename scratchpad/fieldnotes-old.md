
# fieldnotes

Interaction, visuals, and symbols together as one. The model language makes it possible to do this.

## Urls

```
fieldnotes.io/lancejpollard
fieldnotes.io/:user
fieldnotes.io/:organization
fieldnotes.io/:organization/:repo
fieldnotes.io/lancejpollard/physics
fieldnotes.io/lancejpollard/physics/drawing/
fieldnotes.io/lancejpollard/physics/equation/
source.fieldnotes.io/12345 // raw content
api.fieldnotes.io/
```

## Usage

```
import fieldnotes.io/lancejpollard/physics

render(drawing(atom))
```

That would just render a white screen with a picture of an atom.

## Design Inspiration

- https://codybryant.exposure.co/oakley-farm-tomatoes

## Keywords

- [Virtual Research Environment](https://www.jstage.jst.go.jp/article/dsj/12/0/12_GRDI-013/_pdf)
-  [Integrated Modelling](http://www3.uji.es/~canut/eprints/2013-CEUS.pdf)

## Overview

- Models are part of the language. There is no organization other than modules at a high level.
- Components perhaps are modules, reusable, single-purpose libraries
- Projects have lots of components, which are just models.
- Organizations can have projects
- Users.

```
/:user/:project/:component
/lancejpollard/mechanics(quantum)/photon
/photon(lancejpollard,mechanics(quantum))
/genentech/cancer/d1312
```

## Marketing

### To individuals

- Helps you keep up on the scientific literature - Instead I use Feedly to subscribe to new articles via journal RSS feeds, and Papers3 to organize, annotate, and read my PDFs. (http://scientificcouture.blogspot.com/2014/12/scientific-productivity-series-evernote.html). Maybe we would have an integration with the different papers sources, and people could read them and model them, so we can get a real-time stream.

### To enterprises


# Vision

There is a central model of everything in field notes. That can be queried over.

You can do research in the field, and contribute your photos, video, audio recordings, interviews, or just plain notes into the central model. People can use and build off of your model.

There is an ecosystem to design high quality graphics.

It is all based around git. But you don't have to use git. We built the UI so you never have to use git.

It has a familiar user/organization structure like GitHub. But whereas GitHub is a place for you to share arbitrary code, in FieldNotes, everything is intimately connected. From the browser you can start building a model out of other peoples models.

Everything is automatically cited.

Eventually, we can build integrations to other services, so you can directly import their data as well. From sources like Facebook, Instagram, etc. As long as it is properly cited. The citation system should be very simple and out of the way, yet fulfilling.

You can see all of your uploads ("sources") at once. It is just part of the global search.

There is an editor that works with text or graphics, both have the same underlying representation.


# fieldnotes

![](https://raw.githubusercontent.com/lancejpollard/fieldnotes/master/site/public/images/Screen%20Shot%202014-05-16%20at%209.59.34%20PM.png?token=28718__eyJzY29wZSI6IlJhd0Jsb2I6bGFuY2VqcG9sbGFyZC9maWVsZG5vdGVzL21hc3Rlci9zaXRlL3B1YmxpYy9pbWFnZXMvU2NyZWVuIFNob3QgMjAxNC0wNS0xNiBhdCA5LjU5LjM0IFBNLnBuZyIsImV4cGlyZXMiOjE0MDA5MDg0NjB9--03720f530da322a216d5e4e6b9218aca4d2aa21d)

## Notes

- http://en.wikipedia.org/wiki/Thematic_relations

## Thoughts

- basically it could be where you are writing the interface to a class, and you can implement the details as you learn more stuff. so you should be able to define methods without knowing exactly how they work. and then you rename the methods a bit

Everything is a top-level topic, both objects and functions:

```
/username/contraception
/username/contraception(female)
/username/contraception(male)
/username/vasectomy(male)
/username/close(vasa-deferens,male)
```

The urls are unique based on the argument types to the function. When you go to the url, you see something like:

![](https://raw.githubusercontent.com/lancejpollard/fieldnotes/master/site/public/images/Screen%20Shot%202014-05-17%20at%2012.13.51%20PM.png?token=28718__eyJzY29wZSI6IlJhd0Jsb2I6bGFuY2VqcG9sbGFyZC9maWVsZG5vdGVzL21hc3Rlci9zaXRlL3B1YmxpYy9pbWFnZXMvU2NyZWVuIFNob3QgMjAxNC0wNS0xNyBhdCAxMi4xMy41MSBQTS5wbmciLCJleHBpcmVzIjoxNDAwOTU4ODg1fQ%3D%3D--57a2e77749fb6504c8e888e010d21145cf7c8746)

And you can go to `/username` to see all the things someone defined, and fork off their work.

You can then search for all things with a specific property or something, from the bottom search bar. Maybe it changes the url like this:

```
/search?discovery=1930..1940
```

I wonder how far the nesting would go...

```
human
  sleep()

sleep(human)
  duration: range(6hrs, 10hrs)

duration(sleep(human))
  value: range(6hrs, 10hrs)
  evidence: [studies...]
  variability: 5hrs
  modifiers: ...

evidence(duration(sleep(human)))
```

and urls would be like:

```
/human
/sleep(human)
/duration(sleep(human))
/evidence(duration(sleep(human)))
```

You can have plugins that parse certain values with custom grammars perhaps.

## Statistics

Statistics should ideally be generated from the data, rather than copied verbatim as fact like those here: http://www.statisticbrain.com/death-penalty-statistics/. To get the "total number of executions since 1976", we should have a record of every case.

Maybe though, as a hint, you can specify something like a query + count constraint. Something like:

```
gte(1,348, count(execution, since(1976)))
```

Ideally, there would be a record of every item in a statistic. If not, then we just site the statistic somehow.

## Examples

- http://en.wikipedia.org/wiki/Vas_deferens
