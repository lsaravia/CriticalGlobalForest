OPTS= -H margins.sty --bibliography CriticalGF.bib --csl=plos.csl --latex-engine=xelatex

all: Appendices.pdf CriticalGF.pdf Outline.pdf test_tbl.pdf 

%.pdf:%.md
	pandoc $< -o $@ -H Appendices.sty
	evince $@		

Outline.pdf: Outline.md
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
	evince Outline.pdf		

CriticalGF.pdf: CriticalGF.md margins.sty 
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
	evince $@		

Appendices.pdf: Appendices.md 
	pandoc -H Appendices.sty $^ -o $@
	evince $@		

CriticalGF.docx: CriticalGF.md margins.sty CriticalGF.bib makefile
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
			
CriticalGF_AMNAT.pdf: CriticalGF_AMNAT.md margins.sty CriticalGF.bib
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc -H margins.sty --bibliography CriticalGF.bib --csl=the-american-naturalist.csl CriticalGF_AMNAT.md -o CriticalGF.pdf 
	pdftk CriticalGF.pdf CriticalGF_figures.pdf Appendices.pdf output CriticalGF_AMNAT.pdf
	evince CriticalGF_AMNAT.pdf		
