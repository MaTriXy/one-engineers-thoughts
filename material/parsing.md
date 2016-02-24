
source dfa
  https://github.com/haberman/gazelle/blob/master/compiler/bytecode.lua
  https://github.com/haberman/gazelle/blob/master/compiler/fa.lua
  https://github.com/haberman/gazelle/blob/master/compiler/grammar.lua#L205-L226
  http://en.wikipedia.org/wiki/Recursive_transition_network
    that's what i want to do i think
  http://blog.reverberate.org/2013/07/ll-and-lr-parsing-demystified.html
  http://stackoverflow.com/questions/21064599/building-parse-trees-with-shift-reduce-parsing

source lr
  http://blog.bfitz.us/?p=414

source fast parser
  https://github.com/haberman/upb
  https://github.com/haberman/vm-parser-benchmark
  https://github.com/LuaDist/luajit/tree/master/dynasm
  https://github.com/haberman/gazelle/blob/master/compiler/ll.lua
  https://github.com/pippijn/menhir/blob/master/src/cst.ml

source great
  http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-035-computer-language-engineering-spring-2010/lecture-notes/MIT6_035S10_lec03b.pdf

http://en.wikipedia.org/wiki/LR_parser#Constructing_LR.280.29_parsing_tables

> In an ANTLR grammar, we can prefix the ID alternative with a semantic predicate that checks the lookahead token’s status as a type name:

```antlr
type: 'int' | 'unsigned' | 'long'
| {isTypeName(LT(1).getText())}? ID // type name ;
```

http://stackoverflow.com/questions/3056441/what-is-a-semantic-predicate-in-antlr

> operator-operand model of the CPU
> The key idea behind AST structure is that tokens representing oper- ators or operations become subtree roots. All other tokens become operands (children of operator nodes). Finally, we arrive at the AST for x=0;:
Let’s examine this AST to see how it fits our design guidelines. There are no unnecessary nodes; the tree is the smallest possible. Without all of those interior rule nodes, walking this AST would be much faster than walking the parse tree. It’s easy to identify subtrees because each subtree root uniquely identifies what the subtree does; in this case, the subtree performs an assignment.

Transform cst to ast! https://theantlrguy.atlassian.net/wiki/display/ANTLR3/Tree+construction

```antlr
compilationUnit
    :   packageDefinition? importDefinition* typeDefinition+
        -> ^(UNIT packageDefinition? importDefinition* typeDefinition*)
    ;
ANTLR tracks all elements with the same name into a single implicit list:
formalArgs
  : formalArg (',' formalArg)* -> formalArg+
  |
  ;
```

```antlr
statlist : stat+ ; // builds list of stat trees
stat: ID '=' expr -> ^('=' ID expr) // '=' is operator subtree root
  | 'print' expr -> ^('print' expr) // 'print' is subtree root
  ;
```

```antlr
expr: multExpr ('+'^ multExpr)* ; // '+' is root node 
multExpr: primary (('*'^|'.'^) primary)* ; // '*', '.' are roots 
primary
    :   INT   // automatically create AST node from INT's text
    |   ID    // automatically create AST node from ID's text
    | '[' expr (',' expr)* ']' -> ^(VEC expr+)
    ;
```

parse tree == concrete syntax tree

> 4.7.4 Constructing LALR Parsing Tables 266 

In the dragon book-^

```
Stack State Input Action
0 ((n + n))$ shift 9
9 (n + n))$ push 10, goto 14
10 14 (n + n))$ shift 21
10 21 n + n))$ push 22, goto 14
10 22 14 n + n))$ shift 25
10 22 25 + n))$ reduce 4, goto 27
10 22 27 + n))$ reduce 2, goto 15
10 22 15 + n))$ shift 17
10 22 17 n))$ shift 24
10 22 24 ))$ reduce 4, goto 26
10 22 26 ))$ reduce 1, goto 15
10 22 15 ))$ pop, goto popped state
10 22 ))$ shift 23
10 23 )$ reduce 3, goto 27
10 27 )$ reduce 2, goto 15
10 15 )$ pop, goto popped state
10 )$ shift 11
11 $ reduce 3, goto 5
5 $ reduce 2, goto 1
1 $ shift 2, accept
```

> • States correspond to sets of items 
> • Closure finds all the items in the same “state” 

```
Goto(I, X) = Closure( { A→ α X • β | A→ α • X β in I }) 
```
goto is the new set obtained by “moving the dot” over X
Building the DFA states 


source grammar
  https://github.com/ben-ng/meatloaf/blob/master/lib/grammar2table.js

source tutorial
  https://www.youtube.com/watch?v=uncfFsbUF68

source parser
  https://github.com/antlr/antlr4-javascript/blob/master/src/antlr4/Parser.js

> A key requirement
for practical parsing problems is the ability for the language
being parsed to depend on prior input
http://bentnib.org/semantic-actions.pdf
https://parasol.tamu.edu/~rwerger/Courses/434/lec9.pdf
http://courses.washington.edu/css448/zander/Notes/LRandLALR.pdf

debate lr, ll
  http://stackoverflow.com/questions/4092280/what-advantages-do-ll-parsers-have-over-lr-parsers

> Also, in LL parsing, error recovery is a lot easier. If an input doesn't parse correctly, you can try to skip ahead a bit and figure out if the rest of the input does parse correctly. If for instance some programming statement is malformed, you can skip ahead and parse the next statement, so you can catch more than one error.

http://programmers.stackexchange.com/questions/19541/what-are-the-main-advantages-and-disadvantages-of-ll-and-lr-parsing

source http
  https://github.com/h2o/picohttpparser/blob/master/picohttpparser.c
  http is not cfg
    http://www.scs.carleton.ca/sites/default/files/tr/TR-06-02.pdf

> Attribute grammars provide another approach for defining context-sensitiy
http://web.cs.wpi.edu/~kal/courses/cs4533/module4/mysa.html

https://github.com/aaditmshah/statemachines/blob/master/lib/statemachines.js

https://github.com/dhruvbird/regexp-js/blob/master/regexp.js

> A context-free grammar is really just a nondeterministic recursive program that generates or recognizes strings.
http://arxiv.org/pdf/1408.0683.pdf
> a uniform framework for grammars and au- tomata that are based on recursion

> a parser spends a lot more energy on a token than a lexer spends on a character

Wanting to build a parser "combinator". http://en.wikipedia.org/wiki/Parser_combinator

Why parser combinators are slower than LR parsers http://www.reddit.com/r/programming/comments/1lx0oc/ll_and_lr_in_context_why_parsing_tools_are_hard/cc3m3mp

> Unlike static LL(*) analysis, ALL(*) incrementally builds DFA considering
just the lookahead sequences it has seen instead of all possible
sequences.

Look at grammar and try to figure out how to make decisions.

## Problems

1. How to specify the CST of the language (the grammar)?
2. How to specify the AST?
3. How to build a parser from the CST and AST definitions?
  - Doesn't need to be directly generated from the grammar. The grammar should be human readable. The parser _could_ be human readable. But the parser should be as optimized as possible.
  - At each character, make a decision based on "parser stack", remaining input (in some cases, except network parsing), and global knowledge.

> for a practical programing language parser, each input should correspond to a unique parse.

Machine-executable language. vs. Natural language.

> However, simple HTTP parser can have more than 200 states and 72 alphabet cardinality. That gives 200 x 72 = 14400 bytes for the table, which is about half of L1d of modern microprocessors. So the approach is also could be considered as inefficient due to high memory consumption. http://natsys-lab.blogspot.com/2014/11/the-fast-finite-state-machine-for-http.html

> So the second interesting opportunity to generate the fastest HTTP parser is just to encode the automaton directly using simple goto statements, ever w/o any explicit loop.
https://github.com/krizhanovsky/NatSys-Lab/tree/master/http_benchmark

> Parsing the HTML that actually exists over the Web is difficult.
Implementing the semantics (a browser) over HTML/CSS/DOM is extremely difficult.
It means that in reality, it is not context free.
> Valid HTML is not a context-free language.
http://stackoverflow.com/questions/5175840/is-html-a-context-free-language
> The DTD provides the context in which to interpret the HTML.
> HTML is not a context-free grammar http://taligarsiel.com/Projects/howbrowserswork1.htm
> HTML cannot be parsed using the regular top down or bottom up parsers.

## Thoughts

- There are a set of formal grammars
- Then for each grammar, there are parsing algorithms that handle different edge cases:
  + optimal performance
    * streaming vs all at once
  + leniency (like html parsers, learning ways to convert ambiguous stuff or errors into valid html)
  + error recovery
  + validation
- For each grammar rule, there are a set of"deviations" that are allowed, to make the grammar rule forgiving. These seem to happen outside of the grammar rules. Sort of like constraints. Maybe these are defined after all the formal grammar is defined.
- "Speculative parsing"

> Well, unlike HTML, CSS is a context free grammar 


source GREAT ASM parsing
  https://github.com/sinya8282/AVX2REGEX/blob/master/gather.asm

```
section .data
align 32
shuffle1:
  db 0, 4, 0xFF, 0xFF
  db 8, 12, 0xFF, 0xFF
  db 0xFF, 0xFF, 0xFF, 0xFF
  db 0xFF, 0xFF, 0xFF, 0xFF
  db 16, 20, 0xFF, 0xFF
  db 24, 28, 0xFF, 0xFF
  db 0xFF, 0xFF, 0xFF, 0xFF
  db 0xFF, 0xFF, 0xFF, 0xFF
shuffle2 db\
  0, 8, 0xFF, 0xFF,\
  0xFF, 0xFF, 0xFF, 0xFF,\
  0xFF, 0xFF, 0xFF, 0xFF,\
  0xFF, 0xFF, 0xFF, 0xFF,\
  0xFF, 0xFF, 0xFF, 0xFF,\
  0xFF, 0xFF, 0xFF, 0xFF,\
  0xFF, 0xFF, 0xFF, 0xFF,\
  0xFF, 0xFF, 0xFF, 0xFF
section .text
global matching
;; 1st arg: rdi -> elements ptr
;; 2nd arg: rsi -> number of elements (currently fixed 16)
;; 3rd arg: rdx -> binary operation table's ptr
;; return value: result element
matching:
  ;; setup registers
  vpmovzxwd  ymm0, [rdi]
  vmovdqa    ymm1, [shuffle1]
  vmovdqa    ymm2, [shuffle2]
  vpcmpeqd   ymm3, ymm3, ymm3
  ;; 1st reduction: 16 elements -> 8 elements
  vmovapd ymm4, ymm3
  vpgatherdd ymm0, [rdx+ymm0], ymm4
  vpshufb    ymm0, ymm0, ymm1
  ;; 2nd reduction: 8 -> 4
  vmovapd ymm4, ymm3
  vpgatherdd ymm0, [rdx+ymm0], ymm4
  vpshufb    ymm0, ymm0, ymm1
  ;; 3rd reduction: 4 -> 2
  vmovapd ymm4, ymm3
  vpgatherdd ymm0, [rdx+ymm0], ymm4
  vpermq     ymm0, ymm0, 0x08 ;; we have to gather last two-elements into same lane.
  vpshufb    ymm0, ymm0, ymm2 ;; because vpshufb cannot operate cross-(128bit)lanes.
  ;; last reductin: 2 -> 1 (least significant byte)
  vmovapd ymm4, ymm3
  vpgatherdd ymm0, [rdx+ymm0], ymm4
  ;; return result element
  movq rax, xmm0
  ret
```

source screencast pda
  https://class.coursera.org/automata/lecture/16

source
  https://github.com/zkat/mona
