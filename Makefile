BASE=ara
OUTDIR=output
MAIN=$(BASE).adoc

.PHONY: html
html: $(SOURCES) styles/$(CSS)
	asciidoctor $(MAIN) -a stylesheet=./styles/rubygems.css --attribute tabsize=4 -o $(OUTDIR)/$(BASE).html

.PHONY: clean
clean:
	-rm -rf output/*

print-%  : ; @echo $* = $($*)
