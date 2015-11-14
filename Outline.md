# Analysis of critical transitions at the Global Forest


The idea is to do a global analysis using insights from percolation theory to detect signals of ecological transitions [@Kefi2014] 


Thus the question is how near/far is the global forest from a catastrophic transition?

We will use the MODIS vegetation continuous field, so we can analyze temporal changes.


* Most probably multiple process influence the distributions of patch size at a continental scale, so we are trying to extract the main generic ones.

* How scaling laws are related to ecosystem function?

* Hypothesis: the patch distribution is a power law.

* We use percolation theory to calculate the distance to a critical point, the exact value is dependent on details we can not determine but some exponents are invariant. 

* Two assumptions: 
    1) if we view the forest as a static landscape the isotropic percolation universality class is plausible
    2) If we view the dynamic of forest the directed percolation universality class is plausible


# Methods


* The United Nations’ International Geosphere-Biosphere Programme definition of forest (Belward 1996) defined forest as pixels with tree cover equal or greater than 30%  

* We defined broad regions based in connectivity 

* The distribution of patches is continuous but the data is discretized so we discard the lowest values and start fitting patch sizes greater than 9.

* MODIS VCF

* Fitting four models

* Distance to the critical point is a two step procedure:
    
    1) Correlation length is close to the linear length (average linear length) then we can assume the critical point is close and we can apply the universal exponents

    2) Correlation length is lower than the linear length we are far from the critical point.

    3) Correlation length is greater than the linear length --> something is wrong!





\newpage

## Results






![Power law exponent of best models by year and with different data sets: **<Xmin* the data is less than the extimated minimum patch size, *Estimated Xmin* the minimum patch size was estimated from data, and only patch sizes greater than or equal to Xmin was used.](figure/PowerExp_Xmin_year.png)

![Estimated $X_min$ by year. ](figure/EstimatedXmin_year.png)

![$X_min$ vs power exponent](figure/Xmin_Alpha.png)

![Biggest patch size by year](figure/Smax_year.png)


## Related papers

* About fitting power laws
[@Clauset2009]
[@White2008]  

* About global maps 
[@Haddad2015]
[@Sexton2013]
[@Hansen2013]  

* About cluster statistics
[@Seri2012]
[@Manor2008a]


## Bibliography


