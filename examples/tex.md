
inline file
  \begin{filecontents*}{Bibliografy.bib}
  @misc{wikipedia1,
    title = "Scripting language",
    author = "Wikipedia",
    url = "http://en.wikipedia.org/wiki/Scripting_language",
    year = 2014,
  }
  \end{filecontents*}

source table
  http://tex.stackexchange.com/questions/112343/beautiful-table-samples
  http://tex.stackexchange.com/questions/238503/tip-on-how-to-make-a-visually-good-table?lq=1

set variable
  \let \@abstract \relax

define macro
  \def \@abstract \relax

define macro, with parameters
  \def \foo [#1]#2{The first argument is ``#1'', the second one is ``#2''}

define global macro
  \gdef

> When Knuth originally published the language he used the @ to mark commands that a user should not normally use.

> I'm quite happy hacking TeX macros and cobbling together bits and pieces from different style files to suit my own ends, but I have a suspicion that my resulting hacks are not quite as elegant as they could be. In particular, with regard to when to expand and when not to expand macros.

http://tex.stackexchange.com/questions/451/when-to-use-edef-noexpand-and-expandafter

> \def is a TeX primitive, \newcommand is a LaTeX overlay on top of \def. 

define command
  \newcommand{name}[num]{definition}

define environment
  \newenvironment{name}[num]{before}{after}

> I am afraid I cannot offer any advice on the "easy to modify" and "standard source code" parts as they are contradicting the very essence of TeX and LaTeX2e http://tex.stackexchange.com/questions/95687/what-are-coding-conventions-in-latex
