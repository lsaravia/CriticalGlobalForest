OPTS= -H margins.sty --bibliography CriticalGF.bib --csl=journal-of-ecology.csl --latex-engine=xelatex 

all: Appendices.pdf CriticalGF.pdf CriticalGF_bioRxiv.pdf

%.pdf:%.md
	pandoc $< -o $@ -H Appendices.sty
	evince $@		

CriticalGF.pdf: CriticalGF.md margins.sty makefile
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
	evince $@		

Appendices.pdf: Appendices.md 
	pandoc -H Appendices.sty $^ -o $@
	evince $@		

CriticalGF.docx: CriticalGF.md margins.sty CriticalGF.bib makefile
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
			
CriticalGF_bioRxiv.pdf: CriticalGF.md nolineno.sty CriticalGF.bib
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc -H nolineno.sty --bibliography CriticalGF.bib --latex-engine=xelatex --csl=global-change-biology.csl CriticalGF.md -o CriticalGF_bioRxiv.pdf 
	evince CriticalGF_bioRxiv.pdf		
