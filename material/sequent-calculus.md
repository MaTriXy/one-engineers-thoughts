
```coffee
rule axiom
  given nothing
  infer
    assert a, from a

rule cut
  given
    assert delta, a, in gamma # context
    assert theta, in a, delta
  infer
    assert delta, theta, in gamma, delta

rule weakening left
  given
    assert theta, in gamma
  infer
    assert theta, in a, gamma

rule weakening right
  given
    assert theta, in gamma
  infer
    assert theta, a, in gamma

rule permutation left
  given
    assert theta, in gamma, b, a, delta
  infer
    assert theta, in gamma, a, b, delta

rule permutation right
  given
    assert theta, b, a, delta, in gamma
  infer
    assert theta, a, b, delta, in gamma

rule contraction left
  given
    assert theta, in a, a, gamma
  infer
    assert theta, in a, gamma

rule contraction right
  given
    assert theta, a, a, in gamma
  infer
    assert theta, a, in gamma
```

```tex
\[
\begin{array}{cc}
\infer{A \vdash A}{}
&
\infer[cut]{\Gamma, \Delta \vdash \Lambda, \Theta}{\Gamma \vdash \Lambda, A & A, \Delta \vdash \Theta}
\\[8pt]
\infer[w_l]{A, \Gamma \vdash \Theta}{\Gamma \vdash \Theta}
&
\infer[w_r]{\Gamma \vdash \Theta, A}{\Gamma \vdash \Theta}
\\[8pt]
\infer[e_l]{\Gamma, A, B, \Delta \vdash \Theta}{\Gamma, B, A, \Delta \vdash \Theta}
\quad%&
\infer[c_l]{A, \Gamma \vdash \Theta}{A, A, \Gamma \vdash \Theta}
\quad
&%\\[8pt]
\quad
\infer[e_r]{\Gamma \vdash \Theta, A, B, \Delta}{\Gamma \vdash \Theta, B, A, \Delta}
\quad%&
\infer[c_r]{\Gamma \vdash \Theta, A}{\Gamma \vdash \Theta, A, A}
\\[8pt]
\infer[\neg_l]{\neg A, \Gamma \vdash \Theta}{\Gamma \vdash \Theta, A}
&
\infer[\neg_r]{\Gamma \vdash \Theta, \neg A}{A, \Gamma \vdash \Theta}
\\[8pt]
\infer[\wedge_{l}]{A_1 \wedge A_2, \Gamma \vdash \Theta}{A_i, \Gamma \vdash \Theta}
&
\infer[\wedge_r]{\Gamma \vdash \Theta, A \wedge B}{\Gamma \vdash \Theta, A & \Gamma \vdash \Theta,  B}
\\[8pt]
\infer[\vee_l]{A \vee B, \Gamma \vdash \Theta}{A, \Gamma \vdash \Theta & B, \Gamma \vdash \Theta}
&
\infer[\vee_{r}]{\Gamma \vdash \Theta, A_1 \vee A_2}{\Gamma \vdash \Theta, A_i}
\\[8pt]
\infer[\rightarrow_l]{A \rightarrow B, \Gamma, \Delta \vdash \Lambda, \Theta}{\Gamma \vdash \Lambda, A & B, \Delta \vdash \Theta}
&
\infer[\rightarrow_r]{\Gamma \vdash \Theta, A \rightarrow B}{A, \Gamma \vdash \Theta, B}
\\[8pt]
\infer[\exists_l]{\exists x.A[x], \Gamma \vdash \Theta}{A[\alpha], \Gamma \vdash \Theta}
\quad
\infer[\forall_l]{\forall x.A[x], \Gamma \vdash \Theta}{A[t], \Gamma \vdash \Theta}
\ \
&
\ \
\infer[\forall_r]{\Gamma \vdash \Theta, \forall x.A[x]}{\Gamma \vdash \Theta, A[\alpha]}
\quad
\infer[\exists_r]{\Gamma \vdash \Theta, \exists x.A[x]}{\Gamma \vdash \Theta, A[t]}
\\
\end{array}
\]
```
