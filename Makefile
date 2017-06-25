all: fda.pdf

fda.pdf: *.tex Narrative/*.tex
	pdflatex -interaction=nonstopmode fda.tex
	bibtex fda
	pdflatex -interaction=nonstopmode fda.tex
	pdflatex -interaction=nonstopmode fda.tex

.PHONY:
clean:
	rm -f *aux *toc *bbl *log *out *blg

.PHONY:
cleanall: clean
	rm -f fda.pdf
