
# C Compiler Experiments

Playing around with C, seeing how it's doing stuff.

- https://gist.github.com/lancejpollard/2a7378a30940bf4a1ead

## Notes

Search for `namespace v8` to filter through the lines.

- http://stackoverflow.com/questions/20737947/how-to-generate-a-nasm-compilable-assembly-code-from-c-source-code-on-linux
- nasm vs. tasm vs. masm. vs gas syntaxes for "intel syntax" assembly.
- https://github.com/letolabs/nasm

## V8

```
$ make native V=1 CFLAGS.target="-E -dD" CXXFLAGS.target="-E -dD"
$ make native V=1 CFLAGS.target="-S -mllvm --x86-asm-syntax=intel" CXXFLAGS.target="-S -mllvm --x86-asm-syntax=intel"
$ make native V=1 CFLAGS.target="-S -emit-llvm" CXXFLAGS.target="-S -emit-llvm"
$ make native V=1 CFLAGS.target="-Xclang -ast-print -fsyntax-only" CXXFLAGS.target="-Xclang -ast-print -fsyntax-only"
$ make native V=1 CFLAGS.target="-S -O0 -g -emit-llvm" CXXFLAGS.target="-S -O0 -g -emit-llvm"
$ make native V=1 CFLAGS.target="-S -O0 -g -masm=intel" CXXFLAGS.target="-S -O0 -g -masm=intel"
$ make native V=1 CFLAGS.target="-S -O0 -masm=intel -flimit-debug-info" CXXFLAGS.target="-S -O0 -masm=intel -flimit-debug-info"
$ make native V=1 CFLAGS.target="-S -O0 -masm-verbose" CXXFLAGS.target="-S -O0 -masm-verbose"
$ make native V=1 CFLAGS.target="-S -O0 -S -emit-llvm -mllvm -print-machineinstrs" CXXFLAGS.target="-S -O0 -S -emit-llvm -mllvm -print-machineinstrs"
```

attempts:

```
$ make native V=1 CFLAGS.target="-Xclang -ast-dump -fsyntax-only" CXXFLAGS.target="-Xclang -ast-dump -fsyntax-only"
$ make native V=1 CFLAGS.target="-Xclang -ast-list -fsyntax-only" CXXFLAGS.target="-Xclang -ast-list -fsyntax-only"
```

-ast-view
-ast-print
-ast-dump

```
clang --help
clang file.c -fsyntax-only (check for correctness)
clang file.c -S -emit-llvm -o - (print out unoptimized llvm code)
clang file.c -S -emit-llvm -o - -O3
clang file.c -S -O3 -o - (output native machine code)
```

```
./third_party/llvm-build/Release+Asserts/bin/clang++ --help
```

- http://thisisnotaprogrammersblog.blogspot.com/2013/10/using-clang-to-analyze-legacy-c-source.html
- clang query http://eli.thegreenplace.net/2014/07/29/ast-matchers-and-clang-refactoring-tools
- llvm ir for multiple files http://llvm.org/docs/CommandGuide/llvm-link.html

## Install LLVM

http://llvm.org/docs/GettingStarted.html
http://chanson.livejournal.com/184318.html
http://architects.dzone.com/articles/life-instruction-llvm
- print-machineinstrs
- http://llvm.org/docs/CommandLine.html

```
clone llvm-mirror/llvm
clone llvm-mirror/clang
clone llvm-mirror/compiler-rt
cd ..
mv clang llvm/tools/
mv compiler-rt llvm/projects/
mkdir build
mkdir bin
cd build
../llvm/configure --prefix $(dirname $(pwd))/bin
make
make check-all
```
