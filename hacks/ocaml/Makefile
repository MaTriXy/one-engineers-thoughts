
run:
	@ocamlc -o hello hello.ml
	@./hello foo bar
.PHONY: run

install:
	brew install opam
.PHONY: install

setup:
	@brew install opam --HEAD
	@opam init
	@opam config env
.PHONY: setup
