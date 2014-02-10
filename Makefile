##################################################################
# Makefile for LaTeX
##################################################################
# Use:
# make
# make clean
# options for ps2pdf: http://pages.cs.wisc.edu/~ghost/doc/AFPL/6.50/Ps2pdf.htm

TEX:=$(shell ls *.tex)
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.tdo *.cb *.cb2 *.lof *.soc

pdflatex: master.tex
	pdflatex --synctex=1 master.tex
	bibtex master
	pdflatex --synctex=1 master.tex
	pdflatex --synctex=1 master.tex
	pdflatex --synctex=1 master.tex
	rm -rf $(OTHER) $(PS)
clean:
	rm -rf $(OTHER) $(PS)
