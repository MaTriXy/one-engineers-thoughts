
## sequent calculus, system lk

```coffee
rule axiom
  given nothing
  infer
    assert a, from a

# gamma = context(1)
# upsidedown v = context(2)
# delta = context(3)
# theta = context(4)
rule cut
  given
    assert context(2), formula(a), in context(1) # context
    assert context(4), in formula(a), context(3)
  infer
    assert context(2), context(4), in context(1), context(2)

rule cut
  given
    in context 1
      assert context 2
      assert formula a
    in context(3), formula(a)
      assert context 4
  infer
    in context(1), context(2)
      assert context 2
      assert context 4
...
```

From [material/sequent-calculus.md](material/sequent-calculus.md).

```coffee
rule cut
  given
    in context 1
      assert context 2
      assert formula 1
    in context(3)
      and formula(1)
      assert context 4
  infer
    in context(1), context(2)
      assert context 2
      assert context 4
```
