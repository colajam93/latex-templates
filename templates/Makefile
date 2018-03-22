main: check main.tex
	$(MAKE) -C assets
	latexmk main.tex

.PHONY: clean
clean: check
	$(MAKE) -C assets clean
	latexmk -C

.PHONY: check
check:
	@which perl > /dev/null
	@which latexmk > /dev/null
	@which uplatex > /dev/null
	@which upbibtex > /dev/null
	@which dvipdfmx > /dev/null
	@which biber > /dev/null
