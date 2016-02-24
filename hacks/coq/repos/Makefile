
FILES = misc_arith.v misc_list.v cfg.v useless.v inaccessible.v unitrules.v emptyrules.v simplification.v

all:
	coqc $(FILES)
.PHONY: all

# https://coq.inria.fr/refman/Reference-Manual017.html
docs:
	@mkdir -p docs
	@#coqdoc simplification.v --latex -o docs/index.tex
	coqdoc $(FILES) --html -toc --lib-name Simplification -d docs/
	@open docs/toc.html
.PHONY: docs

clean:
	rm -rf *.{vo,glob,aux,crashcoqide,v\#}
	rm -rf .*.aux
.PHONY: clean
