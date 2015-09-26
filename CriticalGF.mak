all:CriticalGF.pdf

CriticalGF.pdf: CriticalGF.md margins.sty CriticalGF.bib CriticalGF.mak
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc -H margins.sty --bibliography CriticalGF.bib --csl=oikos.csl CriticalGF.md -o CriticalGF.pdf 
	evince CriticalGF.pdf		

CriticalGF.docx: CriticalGF.md margins.sty CriticalGF.bib CriticalGF.mak
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc -H margins.sty --bibliography CriticalGF.bib --csl=oikos.csl CriticalGF.md -o CriticalGF.docx 
			
CriticalGF_AMNAT.pdf: CriticalGF_AMNAT.md margins.sty CriticalGF.bib
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CriticalGF.bib
	pandoc -H margins.sty --bibliography CriticalGF.bib --csl=the-american-naturalist.csl CriticalGF_AMNAT.md -o CriticalGF.pdf 
	pdftk CriticalGF.pdf CriticalGF_figures.pdf CriticalGF_appendices.pdf output CriticalGF_AMNAT.pdf
	evince CriticalGF_AMNAT.pdf		
