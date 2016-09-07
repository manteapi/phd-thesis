LATEX=pdflatex
BIBTEX=bibtex
SRCTEX=fluidsculpting.tex
SRCAUX=$(SRCTEX:.tex=.aux)
SRCDVI=$(SRCTEX:.tex=.dvi)
SRCPS=$(SRCTEX:.tex=.ps)
SRCPDF=$(SRCTEX:.tex=.pdf)

all:
	$(LATEX) $(SRCTEX)
	$(BIBTEX) $(SRCAUX)
	$(LATEX) $(SRCTEX)
	$(LATEX) $(SRCTEX)
	$(MAKE) clean

clean:
	rm *.aux 
	rm *.blg 
	rm *.bbl 

mrproper:
	rm *.log 
	rm ${SRCPDF}
