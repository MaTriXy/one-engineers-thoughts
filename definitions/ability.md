
```coffee
definition ability
  Actions performed by an individual.
```

It's not just a method or function that should be called.

It's something from the experience of the individual that should be called!

Or, it's a process that is learned from the individual,
or a process that happens to the individual from other individuals.

So when the wind cools you, you are an individual, made up of cell individuals. The wind is a group of different kinds of particles, in motion. Those particles are interacting with certain pressure and temperature receptors (complex particle systems), providing raw information for the cells to work with. The cells then use this raw information and notify each other, and together they provide the raw information to the individual animal. So each lower layer acts on the information to provide information to the higher layer. The goal of each layer is to be able to "make sense of" this information. The cell "makes sense" of the change in molecular structure of the receptor when feeling the air. The groups of cells make sense of the cell signal. The organism then makes sense of the patterns of changes in the cells. 

**_So each upper layer is "making sense" of each lower layer._**

That is, **it's decoding the information present in the lower layer.**

It's decoding information present in the lower layers. And it then uses this information in it's lifetime, when interacting with other individuals. So communication sort of happens at a lower layer, and is constructed up. But what about low level information recorders? What is the simplest that can exist?

This means the lower layers are evolving _before_ the upper layers. If the particle layers are as complex as proteins, before cells can use them... What if the information underneath particles was just as expressive? Then these societies of individuals that make up a single particle -- a single piece of energy -- what is their expanse? How complex could they be? This is where, potentially, gravity could be hidden. Gravity might be hidden in this web of interacting individual pieces of information, making up particles. It could be the thing that brings them together. These individuals, in a sense, would have to make up the particle's "abilities", and at the same time be able to evolve as the underlying information evolved. So this would describe why the particles come together. It is because of something happening _inside of the them_, in a sense, _before_ them. It is what is happening in the underlying individual bits of information that are interacting.

So then we get to really simple bits of information, that form complex societies making up particles. But then what?

Those individuals need to be composed of other individuals, and so on. Maybe there is a chance that it does _not_ need to be that way, but that would mean as far back as we can currently see is _special_. But maybe it's not, make it's an endless process of _individual emergence_. Or "unifying emergence".

But let's assume that it is something complex. This provides us room to have simple information recorders, with very basic computational memories. They are capable of decoding their internal experience, as well as evolving to decode their external experience. This is how they could get to the point of understanding external information. They would have to already have the internal information.

This means that it's an encoding process from bottom up. But the information from above, can also be passed back down, as in a rock falling.

This means during execution, it would keep track of the nested durations of information encoding.

```
encode experience, in information/math/computation
encode experience, in particle
encode experience, in cell
encode experience, in human
```

This means, the "update" function is:

- every frame, update experience at information level
- every few frames, update experience at particle level, have it taking action, so to speak, based on the information from the lower level, essentially
- every few frames of "particle motion", have the cell be interpreting this information
- every few frames of "cellular motion", have the human interpret this information

So the _interpretation process_, or the _decoding process_, is relative to the lower levels. (It also may get feedback from higher levels maybe, not sure tho)

So this is multi-level modeling.

Maybe there is a way to search the space of all possible information patterns, the computation patterns. And then to abstract those away, so we don't actually have to compute all of those, just a small subset.

So then let's say 100 standard frames for particles. Now action based on these 100 standard frames may result in 100 particle actions. But of these 100 particle actions, only 10 of them happen a lot. So really we can just assume the 10 particle actions, and therefore cut down on 1000 operations per frame. Now it's just 1. So if there is a way to abstract that, then we can easily model reality.

So the questions are:

1. How is information from the lower level decoded by the upper level?
2. How is information from the upper level decoded by the lower level?

```
decode lower, into upper
decode upper, into lower
```

Maybe there is no information that is decoded from the lower? This means information is always decoded bottom up? This is why there is no god. Because there would have to be a way for the lower to interpret information from the higher. It can sort of do this with a brain, but not actually. When you think of doing an action, those thoughts were spurred by an idea, a chemical reaction in your brain, which was then sent as a signal to cells in your arm, to move. The muscle cells then moved. But what was really happening is particles moving around, and those particles then came to the top.

So seems a principle: information is always interpretted from bottom up.

So once there is enough information at one layer, the next layer can interpret it. The next layer can _understand_ it. Then the lower layer can generate information from the surroundings, which are not part of the individual. This information from the particles is then passed to the cells, and then passed to the human.

```
computation -> particles -> cells -> organisms
```

So higher level patterns are always interpretting lower-level information/patterns. This means, information is generated from lower-levels, and slowly used to construct an awareness at a higher level.

Information at the lower-levels is slowly integrated. But to get that lower-level information, the lower-lower-level thing needs to be integrating information.

At some point, it seems to either stop, or to possible be something specific that we just haven't yet observed. So the best we can try to do now is to assume something exists there, but that it is as simple as possible. **The basic memory block that has internal structure to efficiently encode information.**

So then the question is:

- What is the information and ability needed in order to generate space and energy?

The ability to recognize mathematical relationships would potentially do this. So that is maybe what the paper sets out to see.

This means every object has a story from the beginning. For a chair: the particles organized into a center, eventually joining pairs to become carbon. These groups of carbon particles then organized into planets. Then the carbon particles in the planet organized into complex patterns. Then these complex patterns then began interacting. Then these interacting patterns then began organizing the work of individuals. Then the organized work generated a wall, with a functional metabolism. Then cells organized into sheets, and then into plants. Then plants developed wood. And meanwhile, intelligent humans developed from other animals. Then an intelligent human carved the wood, into a chair. So it's this long process that created the chair. But it does not require information from the upper. All of this can happen with information only encoded bottom up.

Information from above can still, in a sense, flow down. Because the choices made at the higher level will effect the future lower-levels. But the current information always comes from the lower levels.

```js
  /**
   * This is what the encode_individual calls, which is custom to each individual.
   *
   * This is the sum of the individual's abilities. The integration of the individual's abilities. Meaning, what information the individual can extract from the environment.
   */

  function encode(self) {

  }

export function individual_1() {
  encode_every_individual([ { encode } ], 100);

  function encode(self) {
    // some memory of self.
    // possible indirect access to other information.
    // so in a sense, these are the possible ways for an individual to evolve!
    return {
      parent: self
    };
  }
}

/**
 *
 * @param {Whole} whole The whole that the individual is constructed from.
 *
 * Actually, the _whole_ can be abstracted away into a simple _encode_ function. This encoding function is based on ability of individual. So if individual can't encode, then it does not matter.
 */
```

```js
/**
 * With useful memory.
 *
 * That is, it contains information that can be used.
 */

pattern('3', function(self, generation){
  // somehow, listen for changes on parent.
  // this means there is a relation between child and parent.
  // this also means child can somehow decode parent.
  var parent = self;
  // I state my similar to the parent, perhaps. Or I identify mathematical patterns perhaps.
  // It can identify mathematical patterns by walking the information space perhaps, or by
  // experiencing the current state.
  // The lower layer can be many operations too, since it would just work at a shorter relative time scale.
  // This means, it is possible that it is capable of anything that can be computed. But it is also more likely that it is something simpler than complex.
  // But it should recognize this information "in an instant" so to speak. In an instant in it's perspective.
  // That is, as fast as it can recognize patterns.
  return {

  }
});

```
