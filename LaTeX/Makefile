PDFLATEX=pdflatex
BIBLIO=biber

SRCTEX=thesis_manteaux.tex
BASENAME=$(basename $(SRCTEX))
SRCAUX=$(SRCTEX:.tex=.aux)
SRCDVI=$(SRCTEX:.tex=.dvi)
SRCPS=$(SRCTEX:.tex=.ps)
SRCPDF=$(SRCTEX:.tex=.pdf)

all: build-pdflatex

dvi: build-pdflatex

pdf: build-pdflatex

ps: build-pdflatex

build-pdflatex:
	$(PDFLATEX) $(SRCTEX)
	$(BIBLIO) $(BASENAME)
	$(PDFLATEX) $(SRCTEX)
	$(PDFLATEX) $(SRCTEX)
	$(MAKE) clean

clean:
	rm *.out 2>/dev/null; true
	rm *.toc 2>/dev/null; true
	rm *.aux 2>/dev/null; true
	rm *.bcf 2>/dev/null; true
	rm *.blg 2>/dev/null; true 
	rm *.bbl 2>/dev/null; true
	rm *.xml 2>/dev/null; true
	rm *.dvi 2>/dev/null; true
	rm *.loa 2>/dev/null; true
	rm *.lof 2>/dev/null; true
	rm *.lot 2>/dev/null; true

mrproper:
	rm *.log 2>/dev/null; true
	rm ${SRCPDF} 2>/dev/null; true
