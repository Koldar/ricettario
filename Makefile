LATEX:=pdflatex
BIBTEX:=bibtex
OUTPUT_FOLDER:=build
MAIN:=main

all:
	mkdir -pv $(OUTPUT_FOLDER)
	$(LATEX) -output-directory=$(OUTPUT_FOLDER) $(MAIN).tex
	$(BIBTEX) $(OUTPUT_FOLDER)/$(MAIN).aux
	$(LATEX) -output-directory=$(OUTPUT_FOLDER) $(MAIN).tex
	$(LATEX) -output-directory=$(OUTPUT_FOLDER) $(MAIN).tex

clean:
	rm -f $(OUTPUT_FOLDER)/*