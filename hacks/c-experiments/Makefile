
#
# Files.
#

SRC = $(notdir c/ $(shell find c -path '*.c'))
SRC += $(subst /,-,$(shell find deps -path '*.c'))
LLVM = $(addprefix llvm/, $(SRC:.c=.llvm))
ASM = $(addprefix asm/, $(SRC:.c=.asm))
MACHO = $(addprefix macho/, $(SRC:.c=.macho))
ELF = $(addprefix elf/, $(SRC:.c=.elf))

#
# Compile object files.
#

build: $(ASM) $(LLVM) $(MACHO)

#
# Compile C to Intel assembly.
#

asm/%.asm: c/%.c
	@clang -o $@ -S -mllvm --x86-asm-syntax=intel $<

#
# Compile C to LLVM.
#

llvm/%.llvm: c/%.c
	@clang -o $@ -S -emit-llvm $<

#
# Compile C to optimized LLVM.
#

llvm/%-O3.llvm: c/%.c
	@clang -o $@ -S -emit-llvm -O3 $<

#
# Compile to MachO-64 machine code.
#
# http://stackoverflow.com/questions/15036909/clang-how-to-list-supported-target-architectures
#

macho/%.macho: c/%.c
	@clang $< -target x86_64-apple-darwin-macho -o $@

#
# Compile to ELF-64 machine code TODO.
#

elf/%.elf: c/%.c
	@clang $< -target x86_64-linux-elf -o $@
