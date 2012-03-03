all: relations.tex relations.png

relations.tex: relations.dot
	dot2tex --figonly relations.dot > relations.tex

relations.png: relations.dot
	dot -Tpng relations.dot > relations.png

clean:
	rm relations.tex
