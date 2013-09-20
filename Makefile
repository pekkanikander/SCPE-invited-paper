

all:  scpe2013.pdf

scpe2013.pdf: 	scpe2013.dvi
	dvi2ps  scpe2013
	pstopdf scpe2013.ps -o scpe2013.pdf

scpe2013.dvi:	scpe2013.tex scpe2013.bbl figure-arch.eps
	latex scpe2013

scpe2013.aux:
	latex scpe2013

# Run BibTeX twice to make the cross-references right
scpe2013.bbl:	scpe2013.bib scpe2013.tex scpe2013.aux
	bibtex scpe2013
	latex scpe2013
	bibtex scpe2013

clean:
	-rm *.aux *.bbl *.blg *.dvi *.log *.pdf

