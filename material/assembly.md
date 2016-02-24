
source debug
  https://github.com/cyrus-and/gdb-dashboard

source os
  https://github.com/KnightOS/corelib/blob/master/src/characters.asm
  https://github.com/KnightOS/corelib

memory
  http://gameprogrammingpatterns.com/data-locality.html
  http://redis.io/topics/memory-optimization

cli and stack frame
  great
    http://www.win.tue.nl/~aeb/linux/hh/stack-layout.html
    http://www.dirac.org/linux/gdb/02a-Memory_Layout_And_The_Stack.php
  other
    http://www.dreamincode.net/forums/topic/285550-nasm-linux-getting-command-line-parameters/
    http://eli.thegreenplace.net/2011/09/06/stack-frame-layout-on-x86-64/
    http://stackoverflow.com/questions/3469955/in-c-how-is-the-main-method-initially-called
    http://duartes.org/gustavo/blog/post/journey-to-the-stack/
    http://stackoverflow.com/questions/8022271/what-is-the-linux-process-kernel-stack-state-at-process-creation
    http://www.tenouk.com/Bufferoverflowc/Bufferoverflow2a.html
    https://www.thomas-krenn.com/en/wiki/Linux_Storage_Stack_Diagram
    http://www-scf.usc.edu/~csci530l/downloads/stackoverflow_en.pdf
    http://stackoverflow.com/questions/19747803/assembly-language-help-finding-agrv10
    http://www.agner.org/optimize/calling_conventions.pdf
    http://asm.sourceforge.net/articles/startup.html
    https://www.freebsd.org/doc/en/books/developers-handbook/x86-command-line.html
    http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory/

stdio
  http://www.jbox.dk/sanos/source/lib/stdio.c.html
  https://github.com/charliesome/jsos/blob/master/libc/src/stdio.c

parser
  http://robertgawron.blogspot.com/2011/04/finite-state-machine-for-parsing.html

string
  https://github.com/ensc/dietlibc/blob/master/x86_64/strcpy.S

env
  https://github.com/ensc/dietlibc/blob/master/i386/getenv.S

stuff
  https://github.com/charliesome/jsos/blob/master/libc/src/setjmp.asm

snippets
  https://github.com/KnightOS/libc/tree/master/src/gpl
  https://github.com/lunixbochs/lib43/tree/master/arch/x86_64/osx

array
  http://stackoverflow.com/questions/2864011/accessing-arrays-element-in-assembly-language-windows
  http://stackoverflow.com/questions/4655608/2d-array-in-assembly

guide
  https://courses.engr.illinois.edu/ece390/books/artofasm/artofasm.html
  http://www.oopweb.com/Assembly/Documents/ArtOfAssembly/Volume/toc.html
  http://www.ic.unicamp.br/~pannain/mc404/aulas/pdfs/Art%20Of%20Intel%20x86%20Assembly.pdf

dfa
  https://courses.engr.illinois.edu/ece390/books/artofasm/CH16/CH16-3.html#HEADING3-1

notes
  It's all just bytes. Byte transformations. Byte groupings. Byte optimizations. Byte patterns. The goal is to organize the bytes so it's both minimal and optimized. So figure out byte access patterns.

optimizations
  https://sourceware.org/glibc/wiki/AgnerWishlist
  http://www.azillionmonkeys.com/qed/blockcopy.html
  http://www.azillionmonkeys.com/qed/asmexample.html
  http://neilkemp.us/src/sse_tutorial/sse_tutorial.html
  http://home.sch.bme.hu/~ervin/codegems.html
  http://www.godevtool.com/#tutorials
  http://www.mark.masmcode.com/
  http://blog.harmonysecurity.com/2009/08/calling-api-functions.html
  http://www.plantation-productions.com/Webster/HighLevelAsm/HLADoc/HLAStdlib/1_HTML/HLAStdlib.htm
  http://www.plantation-productions.com/Webster/HighLevelAsm/HLADoc/HLAStdlib/2_PDF/HLAStdlib.pdf

gas
  https://github.com/yasm/yasm/wiki/GasSyntax
  $ yasm -p gas -f elf32 -g dwarf2 -o testo.o test4.s
  https://github.com/diogovk/c2nasm

source instruction sets
  http://en.wikipedia.org/wiki/List_of_instruction_sets

source syscall in llvm
  http://stackoverflow.com/questions/26053553/syscall-sysenter-on-llvm
  http://llvm.org/docs/LangRef.html#inline-assembler-expressions
  http://www.yellosoft.us/hello-llvm

source convert 16 bytes to 8 byte system
  http://stackoverflow.com/questions/10854466/how-convert-two-bytes-into-one-16-bit-number
