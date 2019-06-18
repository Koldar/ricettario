all:
	pdflatex main.tex
	pdflatex main.tex

clean:
	rm -v main.log main.aux main.pdf main.toc