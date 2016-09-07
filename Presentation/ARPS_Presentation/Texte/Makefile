LATEX=pdflatex
BIBTEX=bibtex
DVIPS=dvips
PS2PDF=ps2pdf
BIBFILE=biblio
SRCTEX=core.tex
SRCAUX=$(SRCTEX:.tex=.aux)
SRCDVI=$(SRCTEX:.tex=.dvi)
SRCPS=$(SRCTEX:.tex=.ps)
SRCPDF=$(SRCTEX:.tex=.pdf)

all:
	$(LATEX) $(SRCTEX)
	$(LATEX) $(SRCTEX)
	#$(DVIPS) $(SRCDVI)
	#$(PS2PDF) $(SRCPS)

screen:
	evince $(SRCPDF) &

clean:
	rm *.aux *.log *.dvi *.ps *.pdf *.bbl *.blg *~

mrproper: clean
	rm $(SRCPDF)
