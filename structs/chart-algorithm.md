
```
19521
2: 10k, 20k
3: 7k, 14k, 21k
3: 10k, 20k, 30k
4: 5k, 10k, 15k, 20k

21702
2: 15k, 30k (complex, but closest)
2: 20k, 40k (simplest, but furthest)
3: 8k, 16k, 24k (close but complex)
3: 10k, 20k, 30k (simplest, not closest)
4: 6k, 12k, 18k, 24k

37927
2: 20k, 40k
2: 30k, 60k
3: 15k, 30k, 45k
3: 20k, 40k, 60k
4: 10k, 20k, 30k, 40k
4: 15k, 30k, 45k, 60k

43143
2: 30k, 60k (factor of 3)
2: 40k, 80k (factor of 4)
3: 15k, 30k, 45k (factor of 3)
3: 20k, 40k, 60k (factor of 4)
4: 15k, 30k, 45k, 60k
4: 20k, 40k, 60k, 80k

67819
2: 50k, 100k (factor of 5, doesn't include 5 after position 1)
2: 40k, 80k (factor of 4)
3: 30k, 60k, 90k (factor of 3)
3: 25k, 50k, 75k (factor of 5, includes 5 after position 1)
4: 20k, 40k, 60k, 80k (factor of 4)
4: 30k, 60k, 90k, 120k (factor of 3)

110213
2: 100k, 200k
2: 60k, 120k
2: 70k, 140k
2: 80k, 160k
3: 40k, 80k, 120k
3: 50k, 100k, 150k
4: 50k, 100k, 150k, 200k
4: 40k, 80k, 120k, 160k
4: 30k, 60k, 90k, 120k
```

```
close vs. complex
factor 5 > 4 > 3
100 / 4 factors are fine, even for 3? (25, 50, 75)
```

assumptions:

- want to see rounded chunk so that max is close to the top line (> 50% of final endpoint, greater than some threshold)
- max should at least be in top 50%
- better max is within top 90%

```
algorithm
  input max
  input threshold 90%
  input segments
  steps
    let factor(5), round up max to nearest factor of 5
    let factor(4), round up max to nearest factor of 4
    let factor(3), round up max to nearest factor of 3
    let diff(x),
      absolute
        difference
          factor(x)
          product
            factor(x)
            threshold
    let a, diff(5)
    let b, diff(4)
    let c, diff(3)
    # closest value above the end
    let closest, min a, b, c
    let interval, divide closest, segments
    let result, product(interval, i), for i, in segments
    return result
```
