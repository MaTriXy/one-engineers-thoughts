- Terminate filename with 0 byte (The filename is not terminated with a 0 byte. You're not checking the result of the open call. You're trying to read 4 bytes while the filesize is 8. Finally you're reusing esp, hoping that it's value wasn't changed.)
- http://stackoverflow.com/questions/3347747/reading-from-a-file-in-assembly

```asm
read:
  ; read the file
    mov     eax,  3         ; read(
    mov     ebx,  eax       ;   file_descriptor,
    mov     ecx,  buf       ;   *buf,
    mov     edx,  bufsize   ;   *bufsize
    int     80h             ; );
```

- malloc is not actually a system call. You need to set up a heap. This is done, as I mentioned, with the brk and sbrk system calls. See man 2 brk. You need to look up the system call number corresponding to brk (see /usr/include/sys/syscall.h), then do a mov eax, # and int 80h to call it as per your above syscall pattern. Once you've done this, you have a heap ending at the address you specify! Neato! 

- BEST RESOURCE: http://cs.lmu.edu/~ray/notes/x86assembly/
- assembly optimization guides: http://www.agner.org/optimize/
- Name binding is the association of entities (data and/or code) with identifiers. An identifier bound to an object is said to reference that object.
- Scope pertains to the visibility of variables, and context refers to the object within which a function is executed.
- Constructors are just a special case of transformations.
- A set of statements is in turn generally structured as a block, which in addition to grouping also defines a lexical scope. http://en.wikipedia.org/wiki/Control_flow
- http://blog.cognitect.com/blog/2014/8/6/transducers-are-coming

---

## List

- set of elements (source)
- set of constraints
- set of transforms
  + filter
  + take n
  + map
  + sort

The set of constraints and transforms can be considered "rules" basically. A list is a collection of elements with certain rules applied to it.

That is a "list comprehension", really just a transformation of one list to another. The transformations can also be called "transducers". But you shouldn't necessarily have to worry about the _order_ of transformations, because there could be some underlying, architecture-specific transformation, or caching mechanism, that either cuts out the need for some steps, or makes it more optimal to change the order of the steps.

Maybe this is instead called a `query`. But a query has a "result" which is often a list. So not sure yet.

Maybe a `cursor` is a better word too? An `iterator` is an object that enables a programmer to traverse a container, particularly lists (http://en.wikipedia.org/wiki/Iterator). 

List has an iterator.

- http://en.wikipedia.org/wiki/Collection_%28abstract_data_type%29#Lists

- Container -> Collection -> List

```coffee
for item, in list
  block
```

Where `block` ends up being just a set of `constraints` and `transforms`. So in this sense, an "iterator" is just another form of a list!

---

## `let`

Let expressions are like record aliases.

---

The conceptual chunks of code, the DSL chunks, which is pretty much everything, are _records_. When you are building models, you are basically creating a record of it. And in another sense, a record is just a piece of data. So the entire model program is all just data records.

--

## Name resolution

- NICE: name binding rules: http://metaborg.org/nabl/
- http://en.wikipedia.org/wiki/Name_resolution
- lexical scoping
- https://github.com/haskell-suite/haskell-names/blob/master/src/Language/Haskell/Names.hs
- http://ro-che.info/articles/2013-03-04-open-name-resolution
- http://gallium.inria.fr/blog/resolving-field-names-2/

> The standard approach is a function that transforms a simple AST to the annotated AST, where every name is annotated with its binding information (just like we did above).

> I like to think of strongly typed languages as a layering of three set of static rules:
> 
> Parsing: Syntactic rules that reject syntactically invalid program, and otherwise give you a well-formed Abstract Syntax Tree (AST)
> 
> Binding: Name resolution rules that take the AST and compute where each occurrence of an identifier was bound, reject programs with unbound variable occurrences, and return you an AST enriched with definition-site/use-site information. The derivations used at these steps remembers which name are defined in the current naming environment, but not (yet) their type.
> 
> Typing: rules that accept this AST with name resolution information, and returns a full typing derivation proving that the program is well-typed (or reject it)

---

## UTF-8

- In general, UTF-16 is usually better for in-memory representation while UTF-8 is extremely good for text files and network protocols.
- http://bjoern.hoehrmann.de/utf-8/decoder/dfa/ (Flexible and Economical UTF-8 Decoder)
- https://github.com/google/gumbo-parser/blob/master/src/utf8.c
- basic latin: http://www.utf8-chartable.de/unicode-utf8-table.pl
- http://blog.golang.org/strings
- https://github.com/golang/go/blob/master/src/unicode/tables.go
- At a sufficiently low level of abstraction, all files are "binary" in the sense that they just contain a bunch of numbers encoded in binary form. However, it's customary to distinguish between text files, where all the numbers can be interpreted as characters representing human-readable text, and binary files, which contain data that, if interpreted as characters, yields nonprintable characters. http://www.gigamonkeys.com/book/practical-parsing-binary-files.html

## HTML

- https://html.spec.whatwg.org/multipage/syntax.html#preprocessing-the-input-stream

## PDF

- http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/pdf_reference_1-7.pdf
- http://www.planetpdf.com/developer/article.asp?ContentID=navigating_the_internal_struct&page=2

## PNG

- http://www.w3.org/TR/REC-png.pdf

## Binary files

- http://www.gigamonkeys.com/book/practical-parsing-binary-files.html

## HTTP

- https://github.com/h2o/picohttpparser

## State machines

- http://en.wikipedia.org/wiki/Finite_state_transducer
- https://github.com/kkoch986/js-parse/blob/master/lib/parser/lr_parser.js
- https://github.com/zaach/jison/blob/master/lib/jison.js#L1367

## Grammars

- http://trevorjim.com/python-is-not-context-free/
- http://en.wikipedia.org/wiki/Pushdown_automaton
- http://dickgrune.com/Books/PTAPG_2nd_Edition/SampleParsers/
- http://eli.thegreenplace.net/2007/11/24/the-context-sensitivity-of-cs-grammar
- Context-free means all of its production rules have a single non-terminal on their left hand side. (http://programmers.stackexchange.com/questions/253454/what-does-context-free-mean-in-the-term-context-free-grammar). Whereas a finite state machine makes use of no auxiliary storage, i.e. its decision is based only on its current state and input, a push-down automaton also has a stack at its disposal and can peek at the top of the stack for taking decisions. Finite State Machine can recognize, the answer is regular expressions. But not the regexes on steroids with capture groups and look-behind/look-ahead you see in program languages; I mean the ones you can build with operators like [abc], |, *, +, and ?.
