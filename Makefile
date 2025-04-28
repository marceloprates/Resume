.PHONY: all clean

all: build move-output

build:
	pdflatex -interaction=nonstopmode src/main.tex
	biber main
	pdflatex -interaction=nonstopmode src/main.tex
	pdflatex -interaction=nonstopmode src/main.tex

move-output:
	mkdir -p output/latest
	cp main.pdf output/latest/cv_$(shell date +%Y%m%d).pdf
	cp main.pdf output/latest/cv_latest.pdf

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.out *.run.xml *.synctex.gz