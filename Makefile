PDFOPTIONS = --highlight-style kate
PDFOPTIONS += --pdf-engine xelatex
PDFOPTIONS += --number-sections

MD = XXX

.PHONY = clean rebuild

rapport.pdf: metadata.yaml $(MD)
	pandoc -s $(MD) -o $@ $(OPTIONS) $(PDFOPTIONS) --metadata-file=$< --template=eisvogel.latex

clean:
	rm -f rapport.pdf

rebuild: clean rapport.pdf
