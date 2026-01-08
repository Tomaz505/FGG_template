all: main.pdf

TEX_SOURCES = 	makefile\
		main.tex\
		Reference.bib\

FIGURES := $(shell find Img/* -type f)

SECTIONS:= $(shell find Sec/* -type f)

main.pdf: $(TEX_SOURCES) $(FIGURES) $(SECTIONS)
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main
	rm main.app main.aux main.bbl main.blg main.lof main.log main.lot main.out main.run.xml main.toc main-blx.bib pdfa.xmpi
	find Sec/ -name "*.aux" -type f -delete

