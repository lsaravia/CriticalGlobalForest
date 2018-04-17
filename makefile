OPTS= -H margins.sty --bibliography CriticalGF.bib --csl=ecology-letters.csl --latex-engine=xelatex 

all: Appendices.pdf CriticalGF.pdf FiguresTables.pdf CriticalGF_bioRxiv.pdf

%.pdf:%.md
	pandoc $< -o $@ -H Appendices.sty
	evince $@		

FiguresTables.pdf: FiguresTables.md margins.sty 
	pandoc $< -o $@ $(OPTS)
	pdftk CriticalGF.pdf FiguresTables.pdf cat output CriticalGFELFigures.pdf
	evince $@		

CriticalGF.pdf: CriticalGF.md margins.sty 
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
	pdftk CriticalGF.pdf FiguresTables.pdf cat output CriticalGFELFigures.pdf
	evince $@		

Appendices.pdf: Appendices.md 
	pandoc -H Appendices.sty $^ -o $@
	evince $@		

CriticalGF.docx: CriticalGF.md margins.sty CriticalGF.bib makefile
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
			
CriticalGF_bioRxiv.pdf: CriticalGF.md nolineno.sty CriticalGF.bib
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc  $< -H nolineno.sty --bibliography CriticalGF.bib --latex-engine=xelatex --csl=plos.csl -o $@
	evince $@		
