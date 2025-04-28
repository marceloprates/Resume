.PHONY: all clean

all: build move-output

build:
	cd src && \
	pdflatex -interaction=nonstopmode resume.tex

move-output:
	mkdir -p output/latest
	cp src/resume.pdf output/latest/cv_$(shell date +%Y%m%d).pdf
	cp src/resume.pdf output/latest/cv_latest.pdf

clean:
	cd src && \
	rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.out *.run.xml *.synctex.gz *.pdf