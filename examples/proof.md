
```coq
Theorem shift_symbol_address:
  forall ge id ofs n,
  symbol_address ge id (Int.add ofs n) = Val.add (symbol_address ge id ofs) (Vint n).
```

```coffee
theorem
  for all environment(global), identifier, offset, n
    the symbol address is equal to the current symbol address plus n.

fact
  statements
    for all environment global
    for all pointer
    for all offset
    for all n
  conclusion
    equal
      address(pointer, sum(offset, n))
      sum(address(pointer, offset), n)

fact
  for all environment global
  for all pointer
  for all offset
  for all n
  assert equal
    address(pointer, sum(offset, n))
    sum(address(pointer, offset), n)

fact
  for all
    input environment global
    input pointer
    input offset
    input integer
    assert
      equal
        address(pointer, sum(offset, integer))
        sum(address(pointer, offset), integer)
  proof
    ...
```

These facts are like unit tests. An `example` is just a specific fact, and helps show you how to use the code.

```coq
Remark init_data_list_size_pos:
  forall il, init_data_list_size il >= 0.
Proof.
  induction il; simpl. omega. generalize (init_data_size_pos a); omega.
Qed.
```

```coffee
fact
  for all
    input item, type list, of data init memory
    assert
      gte
        size item, at beginning
        0
  proof
    use induction
    simplify
    use omega
    generalize
    use omega
```

The
```
for all
  input item, type list, of data init memory
  assert
    gte
      size item, at beginning
      0
```

Is a Coq term/type, a complex dependent product type. So that is just like `user:User`, it's just a very complex type.

```coq
Definition range_perm (m: mem) (b: block) (lo hi: Z) (k: perm_kind) (p: permission) : Prop :=
  forall ofs, lo <= ofs < hi -> perm m b ofs k p.
  
Lemma range_perm_dec:
  forall m b lo hi k p, {range_perm m b lo hi k p} + {~ range_perm m b lo hi k p}.

Definition free (m: mem) (b: block) (lo hi: Z): option mem :=
  if range_perm_dec m b lo hi Cur Freeable 
  then Some(unchecked_free m b lo hi)
  else None.
```

So those in `forall` are the inputs to the function.

https://coq.inria.fr/cocorico/QuickSort
