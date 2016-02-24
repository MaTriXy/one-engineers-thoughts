
source
  http://mizar.auburn.edu/version/current/html/fomodel1.html

```

definition
  let S be ZeroOneStr ;
  let s be Element of the carrier of S \ { the OneF of S};
  func TrivialArity s -> Integer equals :Def21: :: FOMODEL1:def 21
  - 2 if s = the ZeroF of S
  otherwise 0 ;
  coherence ;
  consistency ;
end;

:: deftheorem Def21 defines TrivialArity FOMODEL1:def 21 : 

definition
  let S be ZeroOneStr ;
  let s be Element of the carrier of S \ { the OneF of S};
  :: original: TrivialArity
  redefine func TrivialArity s -> Element of INT ;
  coherence by INT_1:def 2;
end;

registration
  cluster non empty non degenerated non trivial infinite for ZeroOneStr ;
  existence
  proof end;
end;

registration
  let S be non degenerated infinite ZeroOneStr ;
  cluster (S TrivialArity) " {0} -> infinite for set ;
  coherence
  proof end;
end;
```

```
\begin{align}
a + 0       &= a ,\\
a + S (b) &= S (a + b).
\end{align}
```

Addition can be definined formally, as a recursive definition. Or it can be defined as an algorithm.
