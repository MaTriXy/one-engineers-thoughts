
environment type
  symbol gamma
  wiki http://en.wikipedia.org/wiki/Typing_environment
  set of ordered pairs <x:T>
    where x is variable
    and T is type

judgement
  a term and an associated type, in a type context
  Γ ⊢ M ∶ τ

alias context(type), environment(type)

context type
  finite sequence of bindings of program variables to types
  A typing context Γ can be extended with a new binding τ for x with the notation Γ, x ∶ τ .
  function mapping variable to type
  We write x ∶ τ ∈ Γ to mean that Γ maps x to τ , and x # dom(Γ) to mean that x ∉ dom(Γ).
  Γ should just be thought of as some collection of statements (about expressions and their types)

  dom(Γ)
    set of variables bound to context(type)

  Γ(x)
    the type τ bound to x in Γ

⊢, the “turnstile”, denotes that something can be inferred.
For instance, Γ⊢x:t says that if we take the statements in Γ as our assumptions/axioms/current knowledge, then we can infer that x has type t.
If “x has type σ” is a statement in our collection of statements Γ, then from Γ you can infer that x has type σ.
Γ,x:τ⊢e:τ′
−−−−−−−−−−−−−−
This translates to: If allowing us to assume that x has type τ we were able to infer that e has type τ′, then we may deduce that we can infer that the abstraction/anonymization of e with respect to the variable x, λx.e, has type τ→τ′.
Γ⊢λx.e:τ→τ′

rule type
  wiki http://en.wikipedia.org/wiki/Type_rule

calculus lambda
  tutorial http://palmstroem.blogspot.com/2012/05/lambda-calculus-for-absolute-dummies.html
