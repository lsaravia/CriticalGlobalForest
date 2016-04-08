# Analysis of critical transitions at the Global Forest
# Global patterns of forest patches suggest closeness to critical transitions

Author(s): 

[Leonardo A. Saravia](mailto:lsaravia@ungs.edu.ar)
[Santiago R. Doyle]()
[Ben Bond-Lamberty]()

## Abstract (preliminar)

One of the most important changes produced in the biosphere is the replacement of forest areas with human dominated landscapes. These areas contain much less species that the natural ecosystem they replaced, and are one the main drivers of extinctions in the anthropocene. The forest cover is also coupled to atmospheric dynamics and the balance of gases. The dynamics of forest fragments or patches is central to its function as ecosystem.  In different kinds of vegetation including forests the patch size distributions follow power laws or approximate power law, but all these patterns have been observed at relatively small scales. Here we studied the distribution of forest patch sizes at a global level and its changes in the last fourteen years. We hypothesize that the global forest patches should follow a power law distribution. Power laws are a signal of critical phase transitions, where the system changes suddenly of state at a critical point, in the case of forest patches this change implies an abrupt change in the connectivity that pose a risk on the functioning of forest as an habitat and as an ecosystem. Thus we calculate the distance of the global forest to a possible critical point as an early warning indicator.     


*Target Journal*: []()

* [raw manuscript source in markdown](https://github.com/lsaravia/CriticalGlobalForest/blob/master/CriticalGF.md) (figures and citations not rendered in this version)
* [Draft PDF](https://github.com/lsaravia/CriticalGlobalForest/blob/master/CriticalGF.pdf) (contains parsed citations and figures)
* [Bibliography](https://github.com/lsaravia/CriticalGlobalForest/blob/master/CriticalGF.bib) blob/master/CriticalGF.bib

## R Markdown files description



* Fit_heavy_tails.Rmd :

		Fits heavy tail distributions to patch sizes, each chunk takes 3 or 4 days in  AMD FX(tm)-8350 8 processors 3.6Ghz.
		Makes plots of exponents and Xmin
		Extracts maximum patches and fit distributions to the fluctuations. 


* Download_modis.Rmd : Code to download and convert to geotiff the MODIS files (MOD44B version 051) 



## Folders

	| 
	|--- Code: matlab and R code by S. Doyle
	|--- R: R code by L. Saravia
    	 |-- powerlaw: code by Cosma Rohilla Shalizi
