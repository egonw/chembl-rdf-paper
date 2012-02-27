all: article.pdf
	@echo "********* Latex Summary *********"
	@grep -i error article.log || true
	@grep -i warning article.log || true

update: article.pdf

article.bbl: article.bib
	pdflatex article || true
	bibtex article || true

article.pdf: article.tex article.bbl
	pdflatex article.tex
	pdflatex article.tex
	pdflatex article.tex

distclean: clean

clean:
	rm -f *.bbl *.aux article.pdf *.blg *.log *.ps *.fff *.lof *.lot *.ttt *.dvi *~ *.Rout
