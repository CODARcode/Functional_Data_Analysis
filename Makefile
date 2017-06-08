all: basins.pdf

basins.pdf: *.tex Narrative/*.tex
	pdflatex -interaction=nonstopmode basins.tex
	bibtex basins
	pdflatex -interaction=nonstopmode basins.tex
	pdflatex -interaction=nonstopmode basins.tex

.PHONY:
clean:
	rm -f *aux *toc *bbl *log *out *blg

.PHONY:
cleanall: clean
	rm -f basins.pdf
