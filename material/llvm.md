
source instrinsics
  http://llvm.org/docs/LangRef.html#intrinsic-functions
  http://en.wikipedia.org/wiki/Intrinsic_function

source address algorithm
  http://code.google.com/p/address-sanitizer/wiki/AddressSanitizerAlgorithm

source llvm
  http://stackoverflow.com/questions/21410675/getting-the-original-variable-name-for-an-llvm-value

source dwarf debug
  https://www.google.com/search?q=DWARF+debug&oq=DWARF+debug&aqs=chrome..69i57.323j0j1&sourceid=chrome&es_sm=91&ie=UTF-8
  https://groups.google.com/forum/#!topic/llvm-dev/nBAf3n-IpfI
  http://nondot.org/sabre/LLVMNotes/DebugInfoVariableInfo.txt
  http://stackoverflow.com/questions/22834645/llvm-and-dwarf-debugging-information
  http://www.cs.ucla.edu/classes/spring08/cs259/llvm-2.2/docs/SourceLevelDebugging.html
  http://www.ibm.com/developerworks/aix/library/au-dwarf-debug-format/

source asm
  format as
  http://stackoverflow.com/questions/18578347/assembling-and-linking-gcc-generated-assembly-on-mac-os-x
  $ clang -S -O0 -masm=intel add.c -o add-intel.s 
  $ as -mnaked-reg -msyntax=intel add-intel.s -o add_def.o 
  option O0, no optimization
  https://gist.github.com/oblitum/6938559
  -mllvm --x86-asm-syntax=intel
  $ clang++ -S -mllvm --x86-asm-syntax=intel test.cpp
  http://packages.ubuntu.com/lucid/devel/intel2gas

note
  > The Codegen() method says to emit IR for that AST node along with all the things it depends on, and they all return an LLVM Value object. “Value” is the class used to represent a “Static Single Assignment (SSA) register” or “SSA value” in LLVM.
  > TheModule is the LLVM construct that contains all of the functions and global variables in a chunk of code. In many ways, it is the top-level structure that the LLVM IR uses to contain code.
  > The Builder object is a helper object that makes it easy to generate LLVM instructions. 
  > The NamedValues map keeps track of which values are defined in the current scope and what their LLVM representation is.

note
  mapping ast node, ir value

```
Value *VariableExprAST::Codegen() {
  // Look this variable up in the function.
  Value *V = NamedValues[Name];
  return V ? V : ErrorV("Unknown variable name");
}
```
