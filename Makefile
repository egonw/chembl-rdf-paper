all: subdirs article.pdf
	@echo "********* Latex Summary *********"
	@grep -i error article.log || true
	@grep -i warning article.log || true

subdirs:
	@cd figs; make

update: article.pdf

figs/lodgraph.tex: figs/lodgraph.dot    
	dot2tex --figonly figs/lodgraph.dot > figs/lodgraph.tex

figs/relations.tex: figs/relations.dot
	dot2tex --figonly figs/relations.dot > figs/relations.tex

article.bbl: article.bib figs/relations.tex figs/lodgraph.tex
	pdflatex article || true
	bibtex article || true

article.pdf: article.tex article.bbl
	pdflatex article.tex
	pdflatex article.tex
	pdflatex article.tex

distclean: clean

clean:
	rm -f *.bbl *.aux article.pdf *.blg *.log *.ps *.fff *.lof *.lot *.ttt *.dvi *~ *.Rout *-blx.bib
