BASE=ara
OUTDIR=docs
MAIN=$(BASE).adoc

.PHONY: html
html: $(SOURCES) styles/$(CSS)
	asciidoctor $(MAIN) -a stylesheet=./styles/rubygems.css --attribute tabsize=4 -o $(OUTDIR)/index.html

.PHONY: clean
clean:
	-rm -rf $(OUTDIR)/*

print-%  : ; @echo $* = $($*)
