
## Names

- The DIY Handbook. And it can be anything you can build your own. So it can cover software and hardware at once. Or could divide into devhandbook and enghandbook or something. Or diyhandbook can consist of many books that teach people how to do anything, from dev to whatever else.

ElkPress has a series of DIY handbooks. Deep analyses on how to build well-founded software, wetware, or hardware.

## First version

> Give readers a choice; see the ads or pay a subscription. Subscription revenue would soar.

Maybe $1.99/month subscription via stripe to view the site without ads.

First version, all the common things a typical web developer has to work with.

Focus on one community at a time. JS community, tweeting about latest frameworks and how to do things with them as they are released. Then like C community, and unix community, etc.

The most underserved is like unix or command line, but everyone uses them. So that might be the best first market.

The software product that will be built over this book is maybe a peer to peer network, with interface, etc. So in the end, we can actually use it, years down the road. What does this peer to peer network do? Maybe it's for sharing code with each other in real time, and being able to run and debug the code interactively. And eventually, this will be an operating system. So it would be interesting for people to learn, and we can actually have it at the end. I don't want to be maintaining it or anything, or build upon it, but if it worked that would be cool. My money will come from the content and ads. So it removes the responsibility and being strapped to a specific product, yet makes it so I can build the product.

I want to make money from the content, not the actual peer to peer network itself. It'll require too much effort to maintain, and I don't want my life to be like that. So I'll basically teach how to do it, and it'll be a great resource, but someone else can copy it and make money from it if they really want.

Sort of a peer-to-peer terminal and browser as one thing. Source.

- mac
  + commands
  + directories
  + versions
  + standard model
  + shell
    + bash -eq 
    + bash if else
    + bash script -eq
    + bash script -z
- javascript
  + formatter
  + standard model

So, need an abstraction over shell commands on mac/windows/linux. Need standard problems to solve in js/shell/css/html. The shell commands will just solve the problems you normally have to solve, the typical webstack problems. Eventually, once it can read the linux source code, then it can show the complete details for an implementation, but that is like step 10.

Would be nice by first release to do automatic tweets, with high quality images about history. So you slowly get interesting history while getting exposed to the dev handbook. The history pages will be like small stories told about people or major events in computer science. Can capture these images on pinterest. Tweet interesting history fact, then describe the features of the invention or something in the article?

## Later

- linux
  + commands
    * sed
      - guide
      - examples
      - history
        + Created by guy in picture, trying to solve x problem. Building off the research of another guy. Competing with another guy. Created at x company in x year, when he was a graduate student at school. Landing page for social media, which maybe links to the examples page somehow.
      - tweet
        + tips https://twitter.com/bashtips
  + directories
  + versions
  + shell
- windows
  + commands
  + directories
  + versions
  + shell

## Later

- http
  + response codes
    * examples
  + headers
- json
  + formatter

## Later

Grouping them like this, they are much deeper levels of analysis, so the product seems to be evolving by deeply covering different topics, rather than having every topic at a high level.

+ chrome
  + html
    + formatter
    + tags
    + attributes
    + events
    + history
    + specifications

## Later

+ chrome
  + css
    + formatter
    + selectors
    + examples

## Later

+ chrome
  + webgl
    + formatter
    + opengl api
    + examples

## Later

+ browsers and devices
  + types
    * versions
    * css differences
    * caniuse
  + operating system

## Later

+ postgres (first database documented)
  + sql grammar
  + sql examples
  + sql editor
  + sql formatter

Examples are useful for building some more modern product. Like "how to build your own Facebook". Release PDF "How to build your own Facebook." or maybe with tweeting, since it's something that will get everyone in there.

Then use all of the examples above to build that thing in JavaScript. Then build it in another language. And verify it's correctness at the end.

## Later

- aws instances and deployment

## Later

- databases
  + mongo
  + postgres
  + couchdb
  + neo4j
- infrastructure
  + docker
  + chef
  + puppet

After this point, you can now build dynamic features, since you have a database and deployed to amazon. Before those, you are just dealing with static sites on the internet, which is all you need at first.

## Later

- testing
  + unit testing
  + integration testing
  + regression testing
  + automated testing

## Later

- feature uploading images
  - file formats
  - date formats
  - unit tests
  - integration tests
- content types
- color codes
- color

## Later

- feature autofilling their address
  - user agents http://www.useragentstring.com/pages/useragentstring.php
  - time zones

## Later

- feature connect to facebook api

## Later

- feature validating user input
  - unicode characters

## Later

- feature improving developer experience
  - ansi escape sequences

## Later

- implement features of things, and teach people about it
  + capture all of the features in js and a spec

End result is I have a basic spec for all that you would need in a JavaScript app. And it is implemented directly in javascript. This means we can port it to new languages. There is a complete product, now let's teach it across the other languages.

After implementing in a few other languages, then continue going deeper, building more features needed to scrape and parse the web.

End result: Have all the features needed to build a graphical interface in an optimized way.

## Then: Find optimizations to the process:

- how to implement optimizing algorithms
- how to optimize the different implementations further

## Then: Dig into the remaining pieces to build your operating system on top of the raspberry pi

This is a whole new depth

- instruction sets
- memory
- cpu
- boot loading
- debugging hardware
- reading/writing file i/o
- sending network packets
- low-level graphics

## Then: Implementing debugging/breakpoints, navigation

- breakpoints
- gdb

## Then: Implementing data structures from scratch

- map
- heap
- set
- list
- string
- integer
- tree
- graph

## Then: Compiling

By the end of this point, I will have a basic model language editor and interface.

## Then: Verifying (way down the road)

By this point, I will be about ready to release model language, where I have enough money to survive.

...

## Then: Benchmark different implementations of tools on different platforms

Release model language, showing how benchmarks are much better than all programming languages. Standard set of benchmarks across languages.

Maybe don't have to release it then, can release benchmarks of all other languages first, so it doesn't feel biased.

Then 2 more later, release model language or something.

## Then: Abstraction over all api's

- deep model of facebook api, better documentation for it
- better docs and complete model of github
- api wrapper over amazon
- api wrapper over sql
- api wrapper over google web crawling

## Then: Something about language or machine learning

Use this time to use the apis to collect data. Learn how to recognize document structure. Teach how to do machine learning on images, with a good image dataset, and other things, with good data sets. At the end, be able to extract content from documents.

## Then: Automatically generate API's from existing API docs.

- list all api's and their documentation
- build libraries in other languages wrapping api's
  + have a sense of consistency between them, so it is easier for people to learn and use, and switch between languages

End result, have lots of automatically generated content, for every popular API and tool, and all languages.

Then: Add more features/solutions to the handbook, fill it out

So then, that's pretty much all of the content the site will need. From there it can just increase growth. Keep customers coming back and using it as a resource. Adding new problems as I find solutions for them.

Period of building solutions that can be validated against many languages.

## Then: Automatically generate tweets

Learn how to generate better tweets, and incorporate more story into them. Learn how to get people coming back to check out the content by writing better tweeks and participating in social networks. Experience a lot with growing and engaging people.

Use this information to automate a social marketing system. Then I can expand into different markets.

## Then: Facts websites

- people facts
  + life story
  + where they were born
  + basic questions about them people can search for, etc.
- product facts
  + cameras and photography
  + diy video/documentary equipment
  + diy home/craft equipment
  + diy lab equipment
  + affiliate links to amazon
  + diy computer equipment
    * monitors
    * hard drives
    * server farms
    * 

Use these to double or triple the size of the market. For product facts, 

By then I think I will be fully supported by these websites.

Then I can start working on a similar thing but for the universe. Telling the story of the universe. But somehow structure it so people can basically read it chapter by chapter as I model stuff, using the model editor.

By this point, have start of a basic people and famous event database, with interesting pictures. These can all be used to create interesting tweets and dig a little deeper into the history here and there, to make it more engaging. For each feature or project, I can learn about the person a little, get a picture of them, and use it to have the example tell an interesting story at the same time as teaching. (Starting to be able to have the computer generate basic stories by this point too, which I can experiment with).

## Then: Math modeling

With the model editor ready, start by trying to model and animate a cellular automaton at the plank's length. This means modeling the math stuff like abstract algebra and fields and such.

Here I can implement verification and make sure everything is rock solid.

Actually, this is what I want to do, but not necessarily the way to start building an audience. First, need to start with something people are actually trying to do. And then go from there.

Hardware!

- 3d printers
- circuits
- magnets
- raw materials
- light
- parts
- animation / physical motion
- physics and simulation
- 3d modeling the plant to recognize it

## Then: Teach how to build a food production system

...since that is what i want to do anyways! In the same way that the software portion was about building an app and features, this would be about building a physical structure, and how to 3d print it.

Then after doing this, I will have a basic way to start building more physical stuff.

And then I will have a set of basic 3d models and ability to generate non-photorealistic graphics, and do animations.

By this point, having a basic database of people and their basic events, I can use that info to tweet interesting pictures, and make the articles more interesting and people oriented. So by this point, should have decent people database.

## Then: Create more DIY tutorials, for all sorts of basic processes.

- circuit/hardware lab protocols
- construct the parts of a lab
- show how to construct all kinds of objects

After this, I will have a set of good physical models.

## Then: DIY bio

- biological lab protocols
- ElkPress: DIY Bio Handbook

I'm collecting all of this data and building how-to guides automatically, benefiting from the previous work during the software phase of generating a book.

In the end, I have a large database of biological structures.

## Then: DIY chemistry

In the end, I have a large database of chemical structures, and some of their properties. And basic black and white visual models of them. But they are all closed source by this point, mainly just there to teach people DIY stuff.

## Then: DIY Medical / health

- genetics
- anatomy

## Then: Release source editor for model language.

Then after that, I will be supported enough and be able to focus on creating and scaling the data backend to unify all of the knowledge. And it can be a free product even.

And then make it easy for everyone to contribute the knowledge.

By this point we would have a pretty good initial biological database, chemical database, math database, physics database. And everybody could use it and enhance it freely for the first time.

## Then: Release paper on evolution of intelligence. Meaning of problem solving.

So all of the terms are established up front. So when the explanations to understand come next, they have a common language.

## Then: Understanding Plants

For sustainability / health people

- coffee
- tea
- vegetables
- vegetables as food sources

## Then: Understanding Mammals

Since many are going extinct, it would be useful to know how to help, and their story.

## Then: Understanding Marine Animals

Since the oceans are warming and acidifying, the spectrum of life.

## Then: Understanding Cells and Bacteria

Understanding how evolution of life started. And how bacteria can be used for life, like in our stomachs.

## Then: Understanding Materials

- rocks
- water
- concrete

## Then: Planets, Stars and Galaxies

We're going to mars soon.

## Then: Evolution of Humans

## Then: History of civilization

Then if we are making money fine, and the community is developing, I would like to see how history and evolution go. I want to help tell their story, with everyone else.

## Then: Evolution of Intelligence

Release complete model of the universe and evolution intelligence to public. Inspire people to start contributing to the evolution.

## ...

## Then: Write mass-market super hero story.

---

Everything below here is outside of that scope.

## Later

Now we port the product into the language. But from the user's perspective, the whole book, so to speak, is ported to another language.

- languages
  - python
  - c
    + c malloc 
    + c pointers 
    + c scanf 
    + c atoi 
    + c sizeof 
    + c define 
    + c file 
    + c pointer 
    + c random 
  - c++
  - java

## Later

- built with
  + react
  + bootstrap
  + angular
  + node.js
  + ember
  + d3.js
  + jquery
  + meteor
  + rails

To make this release feel good to people, would have to be comprehensive, at least for top-level frameworks. After this was around for like a year, it could then have every framework and tool from github. But to start, it would have to be a good overview of all of them.

To do this, it would have to crawl the web. Which might not be realistic at first.

There is a lot of content here, but I'm not sure how much people would search it.

Can do this one once it's easy to parse websites and understand the different api calls they make.

The people who build the infrastructure are probably less than the people who build bootstrap, so should go with client-side frameworks and websites first probably.

## Later

- apis
  + facebook
    * examples
  + twitter
  + stripe
  + github

To be good enough where people come back and feel like there is enough API docs, it would have to have the main ones it seems.

## Later

- sql

## Later

- assembly

## Ideal Goal

Get to 1,000,000 page views per month. That will bring in about $10k/month ad revenue.

If a person sees 2 pages per day, for 15 days a month, that's 30 page views a month. That means 33k unique visitors per month.

The goal is to optimize how many people view the pages per day, and how many pages a single person views per day.

> Here's a slight variation on image centering in CSS > Click to view new page

> To make $100 everyday you need 40,000 Page Views/day Or, 400 Clicks a day @ 1% CTR and $0.25 CPC. For 40,000 Page Views you have to produce 500 awesome articles or blog posts which attract at least 80 or more page views/article everyday.
http://seohour.com/how-to-earn-100-per-day-with-google-adsense-and-how-much-traffic-you-need-12153/

## Ideas

Can create an ebook like The Elements that shows all of the different programming languages and what was created with them.

- html
- pascal
- etc.

The programming languages: A visual exploration of every known programming language in the world.

- what was created with it, a picture
- how popular it got

```
# left page         | # right page
Prolog        1955  | Prolog
example             | Description
grammar             | websites/products built with it
```

And on right column, like general category, number of packages, popularity, etc.

---

Can create ebook solving the same problem in different web frameworks. So how to build a web app in meteor, vs. react, vs. angular, etc. It would be like the 5 points of a star, building a product in all 5 or however many there are.

---

Can have an ebook going into more depth, building a product in depth with a single framework, like Flexible Rails. Or an MVC framework built from scratch.

If the problems were solved in a programming language, then maybe this book could be automatically generated for any language.

---

Tweet about:

- anniversaries of frameworks:
  + 1 year
  + 10 year
  + 50 year
  + example Unix V6 was released 50 years ago today. <link to it>
- birthdays of famous people
  + donald knuth
  + haskell
  + linus torvalds
- famous security exploit
  + anniversaries
  + just mention them
- famous uses
  + nasa used x to fly space shuttle
- interesting hacks to improve workflow
  + with links
- the first of things
  + the first for loop
- clever/puns
  + https://twitter.com/flyosity/status/644585154275618817
 (Old PowerMacs still score pretty high in benchmark tests. [showing photo of actual bench on top of macs])
- framework comparison http://blog.budacode.com/2015/05/08/node-js-cms-framework-comparison/

---

Basically, building a product backward, from the user perspective, to mastery level.

## Names

- morememory.org
- devbackup.com
- devhandbook.com
- fieldnotes.io
- mainthread.org
- usecurrent.org
- currentversion.io
- virtualmemory.io
+ codeusage.com
+ exampleusage.org
- mainusage.com
- codeuse.org
- codeu.se
- errorhandling.org
- functioncall.org
+ workingexample.org
- devexample.org

## WorkingExample

https://workingexample.org/html/formatter
https://workingexample.org/json/formatter
https://workingexample.org/html/tags
https://workingexample.org/html/div
https://workingexample.org/html/div/attributes
https://workingexample.org/html/div/events
https://workingexample.org/html/div/onclick
https://workingexample.org/html/div/onclick/examples
https://workingexample.org/html/div/examples
https://workingexample.org/html/div/title
https://workingexample.org/html/div/title/examples
https://workingexample.org/css/selectors
https://workingexample.org/css/p
https://workingexample.org/css/div
https://workingexample.org/css/[attr]
https://workingexample.org/css/properties
https://workingexample.org/css/background-color
https://workingexample.org/css/background-color/examples
https://workingexample.org/css/background-color/editor
https://workingexample.org/css/color
https://workingexample.org/css/color/examples
https://workingexample.org/css/color/editor
https://workingexample.org/javascript
https://workingexample.org/javascript/formatter
https://workingexample.org/javascript/classes
https://workingexample.org/javascript/globals
https://workingexample.org/javascript/events
https://workingexample.org/javascript/window
https://workingexample.org/javascript/window/onclick
https://workingexample.org/javascript/window/onblur
https://workingexample.org/github/torvalds/linux
https://workingexample.org/github/torvalds/linux/examples
https://workingexample.org/docker
https://workingexample.org/docker/commands
https://workingexample.org/docker/dockerfile
https://workingexample.org/npm/examples
https://workingexample.org/npm/commands
https://workingexample.org/npm/install
https://workingexample.org/npm/cli # each running in a docker instance
https://workingexample.org/npm/install/examples
https://workingexample.org/facebook
https://workingexample.org/javascript
https://workingexample.org/linux
https://workingexample.org/linux/examples # overview of select commands?
https://workingexample.org/linux/commands
https://workingexample.org/linux/cat
https://workingexample.org/linux/echo
https://workingexample.org/linux/grep
https://workingexample.org/linux/grep/options
https://workingexample.org/linux/grep/-e
https://workingexample.org/linux/grep/-E
https://workingexample.org/linux/grep/--extended
https://workingexample.org/linux/echo/source # brief description of structure of source, with link to raw source, giving them tips on what to look for! Can do this automatically by programmatically reading the source.
https://workingexample.org/linux/echo/examples
https://workingexample.org/linux/echo/repl # starts off a travis build with ssh enabled for that user, so they can ssh in and try it out
https://workingexample.org/http
https://workingexample.org/http/codes
https://workingexample.org/http/status-codes
https://workingexample.org/http/404
https://workingexample.org/http/404/examples
https://workingexample.org/http/404/repl
https://workingexample.org/http/404/repl/client # browser example?
https://workingexample.org/:something-that-doesnt-exist

> Oh dang, we don't have that one yet. Were you just experimenting with the url structure or would some examples about {{ topic }}, like maybe {{ x }} and {{ y about topic }}, be useful? [ Yes ] [ No ] If you were just messing w/ the url structure, here check this out :). (link to cool tip / easter egg).

Therefore, collecting data to make a better UX. Therefore, need to get possible topics. Also need to get error pages, to know what url's were tried. So I can add to the database, after searching google a bit, and then throw up a new page after a few days that's like "Oh dang, we don't have that.... -^".

I have to constantly verify that these examples work too! Which is motivation to verify everything. Then we can write about how we did that.

Each of the actions like `https://workingexample.org/javascript/window/onblur` are solutions to problem, so we can solve. You're typing in that url if you are trying to find something, to solve your problem. So the problems you're trying to solve there are "how do i use `onclick`", "what are some examples of how to use `onclick`".

You should be able to type in anything into the urls and it redirects you to the right place, or gives you examples based purely on that.

Maybe could launch a travis box with ssh in it: http://docs.travis-ci.com/user/workers/container-based-infrastructure/. And that would let you dig around in the container on your own! Don't need to build anything!

---

Could have each example/guide be a story about a person who imagined something ahead of their time, and built it. "It was 1992, grunge was in, and we called each other on chordless phones. But josh saw things differently. He saw digitized information. He saw it transferred at the speed of light. He built one of the early image uploaders. Here is how to build an image loader today. <Tutorial on how to build an image loader>."

Maybe each article is painting this sort of back history to the current day superheroes.

Make it similar to real life ("based in reality"), but don't use real names maybe. Then you can say "They saw a grand vision, but were slowed by money. They had to get a job, and work." Showing how we are limited in our creative freedom, but subtle. How there is the driving creative force, but this preventative force, backward force, downward force, that is holding us back, mainly money, and society. So the end of this workingexample website, people will ideally have a feeling that we are building a new society, where we can build better tools.

Therefore, come up with general story structure for each example. Sorta like mini comics. Then somehow fit those mini comics into a coherent whole. Maybe like snoopie or dilbert sort of things.

Sorta like, every day is a new episode focusing on one of the characters, so they can build something, to finish their day. So every guide is a description of how a person solved a problem for that day. Therefore, can automatically generate! The problem has a specific structure, which can be implemented in code via actions. The story of the person, and the problem they had, can then somehow be generated from that same definition. Just need to have the story characters have even _bigger_ problems. They are trying build great products that allow humans to solve better problems. And are trying to develop their skills to change the world in positive ways.

Amir, storm, april, andahu, etc. All these people build parts of the final piece of the collaborative tool, the peer to peer network with it's own economy, a collaborative intelligence. Each article is a random piece of the puzzle, all of them together telling the complete story. So you always want to know how things could have gotten that way. Start guessing who could've implemented that, etc. But to get there, you need to have good character development. But then certain characters build certain things. And certain characters are bad and try to inject security vulnerabilities in, or hack.

- Who the characters are
- And what their main problems are

Tell the story where, we're at this crossroads from the old time when there wasn't much code, to where everything is now written, and we are getting ready to change the world and enter the third industrial revolution. So we can tell past story of some real people, but change their names so it's a fantasy, but sort of based in real life. Then go til today, where all the code is now. This is the scope of workingexample.org. Then tropon will evolve out of that, these were the first tropons, extending the line of other tropons, all tropons who contributed to the upward force of the universe.
