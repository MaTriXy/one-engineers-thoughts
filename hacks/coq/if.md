
```coq
Definition and (a b:boolean) : boolean :=
  match a with
  | true => b
  | false => false
  end.
```

or

```coq
Add Printing If boolean.

Definition and (a b:boolean) : boolean := if a then b else false.
```
