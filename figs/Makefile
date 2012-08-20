all: relations.tex relations.png lodgraph.tex lodgraph.png

lodgraph.tex: lodgraph.dot
	dot2tex --figonly lodgraph.dot > lodgraph.tex

lodgraph.png: lodgraph.dot
	twopi -Tpng lodgraph.dot > lodgraph.png
	twopi -Tpdf lodgraph.dot > lodgraph.pdf

relations.tex: relations.dot
	dot2tex --figonly relations.dot > relations.tex

relations.png: relations.dot
	dot -Tpng relations.dot > relations.png
	dot -Tpdf relations.dot > relations.pdf

clean:
	rm relations.tex
