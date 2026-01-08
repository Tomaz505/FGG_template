all: main.pdf

MN =  main



TEX_SOURCES = 	makefile\
		$(MN).tex\
		Reference.bib\


ifeq



ifeq ($(OD),WIndows_NT)
	REMOVE = del main.app main.aux main.bbl main.blg main.lof main.log main.lot main.out main.run.xml main.toc main-blx.bib pdfa.xmpi

	REMOVE_AUX = del /S *.aux

	FIGURES := $(shell find Img/* -type f)
	SECTIONS:= $(shell find Sec/* -type f)
else
	REMOVE = rm main.app main.aux main.bbl main.blg main.lof main.log main.lot main.out main.run.xml main.toc main-blx.bib pdfa.xmpi

	REMOVE_AUX = find Sec/ -name "*.aux" -type f -delete

	FIGURES := $(shell find Img/* -type f)

	SECTIONS:= $(shell find Sec/* -type f)
endif

main.pdf: $(TEX_SOURCES) $(FIGURES) $(SECTIONS)
	pdflatex $(MN)
	bibtex $(MN)
	pdflatex $(MN)
	pdflatex $(MN)
	$(REMOVE)
	$(REMOVE_AUX)

