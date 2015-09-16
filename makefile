OPTS= -H margins.sty --bibliography CriticalGF.bib --csl=plos.csl 

all: Outline.pdf CriticalGF.pdf

Outline.pdf: Outline.md
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
	evince Outline.pdf		

CriticalGF.pdf: CriticalGF.md margins.sty CriticalGF.bib makefile
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
	evince $@		

CriticalGF.docx: CriticalGF.md margins.sty CriticalGF.bib makefile
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
			
CriticalGF_AMNAT.pdf: CriticalGF_AMNAT.md margins.sty CriticalGF.bib
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc -H margins.sty --bibliography CriticalGF.bib --csl=the-american-naturalist.csl CriticalGF_AMNAT.md -o CriticalGF.pdf 
	pdftk CriticalGF.pdf CriticalGF_figures.pdf CriticalGF_appendices.pdf output CriticalGF_AMNAT.pdf
	evince CriticalGF_AMNAT.pdf		
