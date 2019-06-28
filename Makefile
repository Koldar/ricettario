all:
	pdflatex -output-directory=build/ main.tex
	pdflatex -output-directory=build/ main.tex

clean:
	rm -f build/*