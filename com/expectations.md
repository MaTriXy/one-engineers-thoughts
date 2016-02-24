
---

What I thought:

```
GET /events/:name/counts
```
```
[
  { day: -60, count: 123 },
  ...
  { day: -1, count: 33 },
  { day: 0, count: 12 }
]
```

What was created:

```
GET /events/:name/counts

[
  [ 1425247200, 123 ],
  [ 1425420000, 33 ],
  [ 1425506400, 12 ]
]
```

Extra work that has to be done because that wasn't anticipated:

- Have to multiply dates by 1000ms
- Have to add missing values.
  - Have to come up with algorithm to figure out which values are missing.
- Have to sort values.
  - Have to make sure sorting doesn't become super slow.
- Have to reformat values (or change existing code).

---
