
```coffee
comments
  (* (*  *) *)

string
  ""

numbers
  digit ::= 0..9
  num ::= digit . . . digit
  integer ::= [-]num

keywords
  _ as at cofix else end exists exists2 fix for forall fun if IF in let match mod Prop return Set then Type using where with

special tokens
  ! % & &&  ( ()  )
  * + ++  , - ->  .
  .(  ..  / /\  : ::  :<
  :=  :>  ; < <-  <-> <:
  <=  <>  = =>  =_D > >->
  >=  ? ?=  @ [ \/  ]
  ^ { | |-  ||  } ~

Identifiers
  ￼first_letter ::= subsequent_letter ::= ident ::=
  a..z | A..Z | _ | unicode-letter
  a..z | A..Z | 0..9 | _ | ’ | unicode-letter | unicode-id-part first_letter [subsequent_letter...subsequent_letter]

terms
  term  ::= forall binders , term     (1.2.8)
    | fun binders => term     (1.2.7)
    | fix fix_bodies      (1.2.14)
    | cofix cofix_bodies      (1.2.14)
    | let ident [binders] [: term] := term in term      (1.2.12)
    | let fix fix_body in term      (1.2.14)
    | let cofix cofix_body in term      (1.2.14)
    | let ( [name , … , name] ) [dep_ret_type] := term in term      (1.2.13, 2.2.1)
    | let ’ pattern [in term] := term [return_type] in term     (1.2.13, 2.2.1)
    | if term [dep_ret_type] then term else term      (1.2.13, 2.2.1)
    | term : term     (1.2.10)
    | term <: term      (1.2.10)
    | term :>     (23.1.1)
    | term -> term      (1.2.8)
    | term arg  …  arg      (1.2.9)
    | @ qualid [term  …  term]      (2.7.11)
    | term % ident      (12.2.2)
    | match match_item , … , match_item [return_type] with       
         [[|] equation | … | equation] end      (1.2.13)
    | qualid      (1.2.3)
    | sort      (1.2.5)
    | num     (1.2.4)
    | _     (1.2.11)
    | ( term )       
             
  arg ::= term       
    | ( ident := term )     (2.7.11)
             
  binders ::= binder  …  binder    
             
  binder  ::= name      (1.2.6)
    | ( name  …  name : term )       
    | ( name [: term] := term )      
             
  name  ::= ident      
    | _      
             
  qualid  ::= ident      
    | qualid access_ident      
             
  sort  ::= Prop  |  Set  |  Type

  fix_bodies  ::= fix_body
    | fix_body with fix_body with … with fix_body for ident
  cofix_bodies  ::= cofix_body
    | cofix_body with cofix_body with … with cofix_body for ident
       
  fix_body  ::= ident binders [annotation] [: term] := term
  cofix_body  ::= ident [binders] [: term] := term
       
  annotation  ::= { struct ident }
       
  match_item  ::= term [as name] [in term]
       
  dep_ret_type  ::= [as name] return_type
       
  return_type ::= return term
       
  equation  ::= mult_pattern | … | mult_pattern => term
       
  mult_pattern  ::= pattern , … , pattern
       
  pattern ::= qualid pattern  …  pattern
    | pattern as ident
    | pattern % ident
    | qualid
    | _
    | num
    | ( or_pattern , … , or_pattern )
   
  or_pattern  ::= pattern | … | pattern

vernacular
  sentence  ::= assumption
    | definition
    | inductive
    | fixpoint
    | assertion proof
       
  assumption  ::= assumption_keyword assums .
       
  assumption_keyword  ::= Axiom | Conjecture
    | Parameter | Parameters
    | Variable | Variables
    | Hypothesis | Hypotheses
       
  assums  ::= ident  …  ident : term
    | ( ident  …  ident : term )  …  ( ident  …  ident : term )
       
  definition  ::= Definition ident [binders] [: term] := term .
    | Let ident [binders] [: term] := term .
       
  inductive ::= Inductive ind_body with … with ind_body .
    | CoInductive ind_body with … with ind_body .
       
  ind_body  ::= ident [binders] : term :=
        [[|] ident [binders] [:term] | … | ident [binders] [:term]]
       
  fixpoint  ::= Fixpoint fix_body with … with fix_body .
    | CoFixpoint cofix_body with … with cofix_body .
       
  assertion ::= assertion_keyword ident [binders] : term .
       
  assertion_keyword ::= Theorem | Lemma
    | Remark | Fact
    | Corollary | Proposition
    | Definition | Example
   
       
  proof ::= Proof . … Qed .
    | Proof . … Defined .
    | Proof . … Admitted .
```

extensions:

```coffee
sentence  ++= record
     
record  ::= record_keyword ident [binders] [: sort] :=
        [ident] { [field ; … ; field] } .
     
record_keyword  ::= Record | Inductive | CoInductive
     
field ::= name [binders] : type [ where notation ]
  | name [binders] [: term] := term

module_type ::= qualid
  | module_type with Definition qualid := term
  | module_type with Module qualid := qualid
  | qualid qualid  …  qualid
  | !qualid qualid  …  qualid
     
module_binding  ::= ( [Import|Export] ident  …  ident : module_type )
     
module_bindings ::= module_binding  …  module_binding
     
module_expression ::= qualid  …  qualid
  | !qualid  …  qualid

form  ::= True  (True)
  | False (False)
  | ~ form  (not)
  | form /\ form  (and)
  | form \/ form  (or)
  | form -> form  (primitive implication)
  | form <-> form (iff)
  | forall ident : type , form  (primitive for all)
  | exists ident [: specif] , form  (ex)
  | exists2 ident [: specif] , form & form  (ex2)
  | term = term (eq)
  | term = term :> specif (eq)

```

### examples

```coffee
example abstraction
  fun ident : type => term

example product
  forall ident : type, term
  desc Denotes the product of the variable ident of type type, over the term term.
  note If the variable ident occurs in term, the product is called dependent product.

example product dependent
  forall x : A, B
  note Non dependent product types have a special notation: “A -> B” stands for “forall _:A, B”.

example non product dependent
  A -> B

example application
  term term

example virtual machine
  term <: type
```
