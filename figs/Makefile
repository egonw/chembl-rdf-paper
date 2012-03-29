all: relations.tex relations.png lodgraph.tex lodgraph.png

lodgraph.tex: lodgraph.dot
	dot2tex --figonly lodgraph.dot > lodgraph.tex

lodgraph.png: lodgraph.dot
	dot -Tpng lodgraph.dot > lodgraph.png

relations.tex: relations.dot
	dot2tex --figonly relations.dot > relations.tex

relations.png: relations.dot
	dot -Tpng relations.dot > relations.png

clean:
	rm relations.tex
