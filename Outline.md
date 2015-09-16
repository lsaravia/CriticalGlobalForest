# Analysis of critical transitions at the Global Forest

Ecologists must search for universal principles [@Harte2014], and one of these universal principles are scaling laws, These scaling laws are a signal of the nonequilibrium conditions under which structures at different levels are created and how large-scale patterns are generated from local interactions.

the idea is to do a global analysis using early warning signals of ecological transitions [@Kefi2014] 


Thus the question is how near/far is the global forest from a catastrophic transition?

We will use the MODIS vegetation continuous field, so we can analyse temporal changes.


* Most probably multiple process influence the distributions of patch size at a continental scale, so we are trying to extract the main generic ones.

* How scaling laws are related to ecosystem function?

* Hypothesis: two power laws, small patches related to deforestation dynamics, large patches related to forest inner dynamics.


# Methods

* The United Nations’ International Geosphere-Biosphere Programme definition of forest (Belward 1996) defined forest as pixels with tree cover equal or greater than 30%  

* We should define areas with different levels of degradation to apply the spatial indicators [Very difficult because is not possible to establish reliable controls]

* The distribution of patches is continuous but the data is discretized so we discard the lowest values and start fitting patch sizes greater than 10. Latter we found the Xmin around 15 for the lower portion of the data.

* If we truncate the data set in two and estimate for the lower part we will get higher power exponent than the real ones(less heavy tails), if we use the complete data set because the lower part have a more importan influence in fitting (because of the greater number of small patches) we will estimate lower power exponents than the real ones (because the tails of the two procesess are mixed)  

* MODIS VCF

* Fitting four models

* Consecuences of each model

* We should use 2D DFT and multifractals in continuous data and fit patch size distributions in discretized data.[Not implemented] 


* Rates of growth an shrink of patches [@Manor2008a, @Manor2008] 

* Portfolio concept relating [@Manor2008a]  and [@Schindler2015] 

\newpage

## Results






![Power law exponent of best models by year and with different data sets: **<Xmin* the data is less than the extimated minimum patch size, *Estimated Xmin* the minimum patch size was estimated from data, and only patch sizes greater than or equal to Xmin was used.](Results/Southamerica/PowerExp_xmin_year.png)

![Estimated $X_min$ by year. ](Results/Southamerica/EstimatedXmin_year.png)

* The $\alpha$ with Estimated Xmin correspond to big forest patches and natural forest dynamics, and there is no variation in these. The  $\alpha$ with xmin=9 correspond to small patches probably influenced by deforestation.

* Besides the power law distribution is the best model is not a valid model for the complete data set. For  the patch sizes greater than Xmin the best model is the power law and it is not rejected by the goodness of fit test (GOF). For patches less than Xmin, the best model is power law with exponential cutoff, the second best is power law but it was rejected by GOF.


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


