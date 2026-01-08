all: main.pdf

MN =  main

TEX_SOURCES = 	makefile\
		$(MN).tex\
		Reference.bib\

FIGURES := $(shell find Img/* -type f)
SECTIONS:= $(shell find Sec/* -type f)

main.pdf: $(TEX_SOURCES) $(FIGURES) $(SECTIONS)
	pdflatex $(MN)
	bibtex $(MN)
	pdflatex $(MN)
	pdflatex $(MN)
	rm main.app main.aux main.bbl main.blg main.lof main.log main.lot main.out main.run.xml main.toc main-blx.bib pdfa.xmpi
	find Sec/ -name "*.aux" -type f -delete

