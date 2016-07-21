PDFLATEX=pdflatex
MAKEINDEX=makeindex
MAKEGLOSSARIES=makeglossaries
BIBLIO=biber

SRCTEX=thesis_manteaux.tex
BASENAME=$(basename $(SRCTEX))
SRCAUX=$(SRCTEX:.tex=.aux)
SRCDVI=$(SRCTEX:.tex=.dvi)
SRCPS=$(SRCTEX:.tex=.ps)
SRCPDF=$(SRCTEX:.tex=.pdf)
SRCIST=$(SRCTEX:.tex=.ist)
SRCGLO=$(SRCTEX:.tex=.glo)

all: build-pdflatex

dvi: build-pdflatex

pdf: build-pdflatex

ps: build-pdflatex

build-pdflatex:
	$(PDFLATEX) $(SRCTEX)
	$(BIBLIO) $(BASENAME)
	$(MAKEGLOSSARIES) $(BASENAME)
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
	rm *.acn 2>/dev/null; true
	rm *.acr 2>/dev/null; true
	rm *.alg 2>/dev/null; true
	rm *.glg 2>/dev/null; true
	rm *.glo 2>/dev/null; true
	rm *.gls 2>/dev/null; true
	rm *.ilg 2>/dev/null; true
	rm *.ind 2>/dev/null; true
	rm *.ist 2>/dev/null; true
	rm *.slg 2>/dev/null; true
	rm *.slo 2>/dev/null; true
	rm *.sls 2>/dev/null; true
	rm *.synctex.gz 2>/dev/null; true

mrproper:
	rm *.log 2>/dev/null; true
	rm ${SRCPDF} 2>/dev/null; true
