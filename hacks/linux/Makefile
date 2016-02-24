
#
# Variables.
#

SRC := ./

git:
	sudo apt-get install git

gdb:
	sudo apt-get install gdb

default: x86-32

rust: rust-install rust-cargo-install

rust-install:
	curl -s https://static.rust-lang.org/rustup.sh | sudo sh

rust-cargo-install:
	triple=x86_64-unknown-linux-gnu
	curl -O https://static.rust-lang.org/cargo-dist/cargo-nightly-$triple.tar.gz
	tar xf cargo-nightly-$triple.tar.gz
	./cargo-nightly-$triple/install.sh

setup:
	sudo apt-get install gdb
.PHONY: setup

setup32: setup
	sudo apt-get install libc6-dev-i386
.PHONY: setup32

x86-32:
	@nasm -f elf32 -o $(SRC)/x86-32.out -l $(SRC)/x86-32.lst $(SRC)/x86-32.asm
	@gcc -m32 -o $(SRC)/x86-32-exec $(SRC)/x86-32.out
	@#size $(SRC)/x86-32-exec $(SRC)/x86-32.out
	@./$(SRC)/x86-32-exec ./x86-32/macros.asm
.PHONY: x86-32

c:
	$(call asm,dumpstack)
.PHONY: c

c-old:
	@#clang $(CARGS) --x86-asm-syntax=intel -o c/memcpy.s c/memcpy.c
	@#gcc -c -g -Wa,-a,-ad c/memcpy.c > c/memcpy.lst
	@#otool -tvV c/memcpy.o
	@gcc -c -g c/memcpy.c -o c/memcpy.o
	@gobjdump -d -S -l -M intel c/memcpy.o > c/memcpy.s
	@#gcc -g -c -Wa -adhln c/memcpy.c
.PHONY: c-old

#
# Interweave C, assembly, and opcodes.
#
# $1: filename
#

define asm
	@# gcc -O0 -c -g c/$1.c -o c/$1.o
	gcc -O0 -c -ggdb3 c/$1.c -o c/$1.o
	objdump -d -M intel -S c/$1.o > c/$1.asm
	@rm c/$1.o
endef
