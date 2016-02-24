
```coffee
definition focus
  real-valued parameter optimization
```

So focusing is optimizing parameters for computation. This is what the brain is doing.

from https://www.lri.fr/~hansen/proceedings/2014/GECCO/companion/tutorials/p281.pdf
> Evolutionary Computation: A Unified Approach

– focus: real-valued parameter optimization
– individual: vector of real-valued parameters
– reproduction: Gaussian “mutation” of parameters
– M parents, K>>M offspring

---

– a population of “individuals”
– a notion of “fitness”
– a birth/death cycle biased by fitness
– a notion of “inheritance”

```
1. Randomly generate an initial population.
2. Do until some stopping criteria is met:
  Select individuals to be parents (biased by fitness).
  Produce offspring.
  Select individuals to die (biased by fitness).
  End Do.
3. Return a result.
```

- fitness: function to be optimized
- individuals: points in the space
- reproduction: generating new sample points from existing ones.
