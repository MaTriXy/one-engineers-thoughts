
```coffee
steps research
  assume term
  search term, in google scholar
    assume citations
    open citations
      assume citation
      scan citation, for keywords
        find definition, for every keyword, in keywords
          ask is it, good # machine asks itself, based on it's knowledge, yes or no
          ask does this, make sense
            try to mentally, explain/visualize, it # being able to explain it means you understand it
              using simple terms, in your existing knowledge
          try to textually explain it
          # Then do the same process for this keyword. Keep repeating as far as it's still interesting to original topic. Spend time seeing finding associations to the _general picture you have_ of your knowledge, to the research. See where the research can be applied.
          research keyword

  during process
    take note, of good authors
      follow them # This gets interpretted, because it is a standard visual/narrative experience. Imagine taking note of individuals, your focus is on the individuals, because they are more similar to yourself, and so more interesting. That's how you get preference.
      
      identify authors favorite citations across their papers
        learn where did they get their ideas from
```

don't like this anymore:

```coffee
let citations, search term, in google scholar
```

It doesn't read like you currently understand it now. But humans should be able to try forming it however they want, so we can explore new ways of defaulting the text layout.

```coffee
search term, in google scholar
  assume citations
```

That reads way better. It is the same thing, but now it's stating actions explicitly. This is more like how you would think about it.

```coffee
open citations
  assume citation
  scan citation, for keywords
```

Is way better than

```coffee
visit citation, in open citations
  scan citation, for keywords
```

Both should effectively be the same thing, they both become `visit x, in y`.

---

```coffee
thought Having tons of optimization problems described for community
  # describing how we could _choose_ to act in the future.
  # these are the _options_ we have for future action.
  This way, when term lang is released, it can be directed at the hardcore developer community, and they can start creating optimizations for it. Like what rustlang did. Then we can quickly visualize the benchmark comparisons to existing programming languages, in a way that it is undeniable that term lang is better in all aspects. It is the language of the future.

  # in order for those options to exist, we have to have certain other things.
  # these are essentially an earlier state.
  # so you have to essentially: visualize what you would have to be doing
  # just before, in order to be able to act that way.
  therefore
    have good charts
    have unbelievable graphics
    have simple stories
    i can create products
```

```coffee
world Having tons of optimization problems described for community.
  when term lang is released
  it can be directed at the hardcore developer community
  they can start creating optimizations for it
  like what rustlang did
  eventually
    we can quickly visualize the benchmark comparisons to existing programming languages, in a way that it is undeniable that term lang is better in all aspects.
  it is the language of the future

  so by then
    have good charts
    have unbelievable graphics
    have simple stories
    i can create products

    so by then
      ...
```

Ah, so this recursive problem definition is **great** for writing them down, but it is never consistent, since it's a graph with tons of dependencies.

So when you write it down, maybe it just get's simplified to a standard form, such as a reference to some id of the problem, where it is stored in it's raw form. But then you can do some sort of keyboard shortcuts to navigate around the space of that problem, to make it easy to use in the current space.

This suggests that we shouldn't really be dealing with files, but more just objects. Files are like the mental objects we create for things for quick retrieval, but it would be nice to compose files or something, somehow. This is kind of how the memory of a human works.
