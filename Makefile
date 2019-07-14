LATEX:=pdflatex
BIBTEX:=bibtex
OUTPUT_FOLDER:=build
MAIN:=main

all:
	$(LATEX) -output-directory=$(OUTPUTFOLDER) $(MAIN).tex
	$(BIBTEX) build/$(MAIN).aux
	$(LATEX) -output-directory=$(OUTPUTFOLDER) $(MAIN).tex
	$(LATEX) -output-directory=$(OUTPUTFOLDER) $(MAIN).tex

clean:
	rm -f build/*