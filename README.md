
# Power laws and critical fragmentation in global forests

Author(s): 

[Leonardo A. Saravia](mailto:lsaravia@ungs.edu.ar)
[Santiago R. Doyle]()
[Ben Bond-Lamberty]()

* Scientific Reports volume 8, Article number: 17766 (2018) 

   <https://doi.org/10.1038/s41598-018-36120-w>

[![DOI](https://zenodo.org/badge/34926581.svg)](https://zenodo.org/badge/latestdoi/34926581)


## Abstract 

The replacement of forest areas with human-dominated landscapes usually leads to fragmentation, altering the structure and function of the forest. Here we studied the dynamics of forest patch sizes at a global level, examining signals of a critical transition from an unfragmented to a fragmented state, using the MODIS vegetation continuous field. We defined wide regions of connected forest across continents and big islands, and combined five criteria, including the distribution of patch sizes and the fluctuations of the largest patch over the last sixteen years, to evaluate the closeness of each region to a fragmentation threshold. Regions with the highest deforestation rates–South America, Southeast Asia, Africa–all met these criteria and may thus be near a critical fragmentation threshold. This implies that if current forest loss rates are maintained, wide continental areas could suddenly fragment, triggering extensive species loss and degradation of ecosystems services.


## R Markdown files description


* Threshold_sensitivity.Rmd :

		Fits heavy tail distributions to patch sizes, using Python package powerlaw
		Makes plots of exponents 
		Makes bootstrapped confidence intervals using boot packages 
		Extracts maximum patches and fit distributions to the fluctuations. 



* Download_modis.Rmd : Code to download and convert to geotiff the MODIS files (MOD44B version 051) 

* Map_study_areas.Rmd : Map study areas over google maps for visualization 

* Map_Max_patches.Rmd : Generate gif animations of largest patch dynamics



## Folders

	| 
	|--- Code: matlab and Python code by S. Doyle / L. Saravia
	|--- R: R code by L. Saravia
    	 