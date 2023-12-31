FILE = thesis_julian_buecher
TARGET_NAME = master_thesis
IGNORE_ERRORS_FLAG = -interaction=nonstopmode -halt-on-error
LATEX_MK_FLAGS = -pdf -bibtex $(IGNORE_ERRORS_FLAG)

all:
	pdflatex $(IGNORE_ERRORS_FLAG) $(FILE)
	# biber $(FILE)
	makeglossaries $(FILE)
	# pdflatex $(IGNORE_ERRORS_FLAG) $(FILE)
	latexmk $(LATEX_MK_FLAGS) $(FILE).tex
	mv $(FILE).pdf $(TARGET_NAME).pdf

clean:
	rm -rf *.acn *.bcf *.glo *.ist *.lof *.log *.lol *.lot *.out *.pdf *.run* *.toc *.acr *.alg *.bbl *.blg *.glg *.gls
	find . -name \*.aux -type f -delete
