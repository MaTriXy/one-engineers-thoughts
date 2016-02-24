
```coffee
tactic intro
  desc Applies to a goal that is either a product or starts with a let binder
  variant intros
    desc This repeats intro until it meets the head-constant. It never reduces head-constants and it never fails.
  variant intro identifier
    desc This applies intro but forces ident to be the name of the introduced hypothesis.
```

```coffee
tactic ∣∣
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic182

tactic ;
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic176

tactic ;[…∣…∣…]
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic177

tactic abstract
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic189

tactic absurd
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic61

tactic admit
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic60

tactic apply
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic8

tactic apply … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic13

tactic apply … with
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic9

tactic assert
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic49

tactic assert as
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic52

tactic assert by
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic51

tactic assumption
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic5

tactic auto
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic141

tactic autorewrite
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic145

tactic autounfold
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic144

tactic case
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic67

tactic case_eq
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic70

tactic cbv
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic127

tactic change
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic125

tactic change … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic126

tactic classical_left
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic167

tactic classical_right
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic168

tactic clear
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic36

tactic clear dependent
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic38

tactic clearbody
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic37

tactic cofix
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic108

tactic compare
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic161

tactic compute
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic129

tactic congruence
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic153

tactic constr_eq
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic154

tactic constructor
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic17

tactic contradict
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic63

tactic contradiction
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic62

tactic cut
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic50

tactic cutrewrite
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic116

tactic decide equality
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic160

tactic decompose
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic46

tactic decompose record
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic48

tactic decompose sum
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic47

tactic dependent destruction
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic80

tactic dependent induction
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic78

tactic dependent induction … generalizing
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic79

tactic dependent inversion
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic95

tactic dependent inversion … as
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic96

tactic dependent inversion … as … with
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic100

tactic dependent inversion … with
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic99

tactic dependent inversion_clear
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic97

tactic dependent inversion_clear … as
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic98

tactic dependent inversion_clear … as … with
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic102

tactic dependent inversion_clear … with
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic101

tactic dependent rewrite ->
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic164

tactic dependent rewrite <-
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic165

tactic destruct
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic65

tactic discriminate
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic82

tactic discrR
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual005.html#hevea_tactic0

tactic do
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic178

tactic double induction
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic77

tactic eapply
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic10

tactic eapply … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic14

tactic eassumption
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic6

tactic eauto
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic143

tactic ecase
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic68

tactic econstructor
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic22

tactic edestruct
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic66

tactic ediscriminate
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic83

tactic eelim
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic73

tactic eexact
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic4

tactic eexists
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic23

tactic einduction
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic72

tactic einjection
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic85

tactic eleft
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic25

tactic elim … using
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic74

tactic elimtype
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic75

tactic erewrite
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic115

tactic eright
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic26

tactic esimplify_eq
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic163

tactic esplit
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic24

tactic evar
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic58

tactic exact
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic3

tactic exfalso
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic64

tactic exists
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic19

tactic f_equal
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic159

tactic fail
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic186

tactic field
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic172

tactic field_simplify
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic173

tactic field_simplify_eq
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic174

tactic first
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic183

tactic firstorder
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic149

tactic firstorder tactic
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic150

tactic firstorder using
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic152

tactic firstorder with
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic151

tactic fix
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic107

tactic fold
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic139

tactic fourier
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic175

tactic functional induction
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic81

tactic generalize
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic56

tactic generalize dependent
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic57

tactic has_evar
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic157

tactic hnf
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic134

tactic idtac
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic185

tactic induction
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic71

tactic info
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic188

tactic injection
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic84

tactic injection … as
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic86

tactic instantiate
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic59

tactic intro
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic27

tactic intro after
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic31

tactic intro at bottom
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic34

tactic intro at top
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic33

tactic intro before
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic32

tactic intros
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic28

tactic intros intro_pattern
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic35

tactic intros until
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic29

tactic intuition
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic147

tactic inversion
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic87

tactic inversion … as
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic89

tactic inversion … as … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic92

tactic inversion … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic91

tactic inversion … using
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic105

tactic inversion … using … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic106

tactic inversion_clear
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic88

tactic inversion_clear … as
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic90

tactic inversion_clear … as … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic94

tactic inversion_clear … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic93

tactic is_evar
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic156

tactic is_var
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic158

tactic lapply
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic12

tactic lazy
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic128

tactic left
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic20

tactic legacy field
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual027.html#hevea_tactic205

tactic legacy ring
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual027.html#hevea_tactic204

tactic lia
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual024.html#hevea_tactic196

tactic lra
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual024.html#hevea_tactic195

tactic move
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic41

tactic nia
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual024.html#hevea_tactic197

tactic nsatz
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual028.html#hevea_tactic206

tactic omega
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic169

tactic pattern
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic140

tactic pose
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic45

tactic pose proof
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic53

tactic progress
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic181

tactic psatz
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual024.html#hevea_tactic194

tactic quote
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic166

tactic red
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic133

tactic refine
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic7

tactic reflexivity
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic118

tactic remember
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic44

tactic rename
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic42

tactic repeat
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic179

tactic replace … with
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic117

tactic revert
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic39

tactic revert dependent
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic40

tactic rewrite
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic109

tactic rewrite ->
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic110

tactic rewrite <-
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic111

tactic rewrite … at
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic113

tactic rewrite … by
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic114

tactic rewrite … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic112

tactic right
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic21

tactic ring
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic170

tactic ring_simplify
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic171

tactic rtauto
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic148

tactic set
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic43

tactic setoid_replace
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual029.html#hevea_tactic207

tactic simpl
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic135

tactic simpl … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic136

tactic simple apply
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic11

tactic simple apply … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic15

tactic simple destruct
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic69

tactic simple eapply … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic16

tactic simple induction
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic76

tactic simple inversion
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic103

tactic simple inversion … as
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic104

tactic simplify_eq
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic162

tactic solve
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic184

tactic specialize
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic55

tactic split
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic18

tactic split_Rabs
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual005.html#hevea_tactic1

tactic split_Rmult
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual005.html#hevea_tactic2

tactic stepl
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic123

tactic stepr
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic124

tactic subst
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic122

tactic symmetry
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic119

tactic symmetry in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic120

tactic tauto
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic146

tactic timeout
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic187

tactic transitivity
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic121

tactic trivial
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic142

tactic try
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual011.html#hevea_tactic180

tactic unfold
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic137

tactic unfold … in
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic138

tactic unify
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic155

tactic vm_compute
  docs https://coq.inria.fr/distrib/current/refman/Reference-Manual010.html#hevea_tactic130
```
