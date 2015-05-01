OPTS= -H margins.sty --bibliography CriticalGF.bib --csl=plos.csl 

all: Outline.pdf 


Outline.pdf: Outline.md
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc $< -o $@ $(OPTS)
	evince Outline.pdf		
