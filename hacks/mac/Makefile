
#
# Variables.
#

SRC := ./

default: x86-32 x86-64

x86-32:
	@nasm -f macho32 -o $(SRC)/x86-32.out -l $(SRC)/x86-32.lst $(SRC)/x86-32.asm
	@#ld -macosx_version_min 10.7.0 -o $(SRC)/x86-32-exec $(SRC)/x86-32.out
	@# @./$(SRC)/x86-32-exec foo
.PHONY: x86-32

x86-64:
	@nasm -f macho64 -o $(SRC)/x86-64.out -l $(SRC)/x86-64.lst $(SRC)/x86-64.asm
	@#ld -macosx_version_min 10.7.0 -o $(SRC)/x86-64-exec $(SRC)/x86-64.out
	@# @./$(SRC)/x86-64-exec foo
.PHONY: x86-64

vm:
	@echo 'vagrant ssh'
.PHONY: vm
