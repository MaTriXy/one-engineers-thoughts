
type parser
  property directionality
    possibility bottom up
    possibility top down
  property deterministic, type boolean
  property pure
  property family
  property strategy search
    possibility breadth
    possibility depth

parser lr

parser lr generalized

parser ll

parser lc
  name Left-Corner Parser
  wiki http://en.wikipedia.org/wiki/Left_corner_parser

parser cyk
  type of parser chart

parser earley
  type of parser chart

parser chart
  info http://en.wikipedia.org/wiki/Chart_parser

form sentential
  desc A sentential form is a member of (\Sigma \cup N)^* that can be derived in a finite number of steps from the start symbol S; that is, a sentential form is a member of \{ w \in (\Sigma \cup N)^* \mid S {\Rightarrow_G}^* w \}. A sentential form that contains no nonterminal symbols (i.e. is a member of \Sigma^*) is called a sentence.[6]

actions
  find handle
