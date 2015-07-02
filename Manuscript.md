# Analysis of critical transitions at the Global Forest

## Abstract


## Methods

A 30% threshold was used to convert the percentage tree cover to a binary image of forest and non-forest pixels [@Haddad2015]. Patches of contiguous forest were determined in the binary image by grouping connected pixels using a neighboorhood of 8 forest units (Moore neighborhood).

We fitted the empirical distribution of forest units area a power-law or power-law with exponential cut-off, log-normal, and exponential distributions, using maximum likelihood estimation [@Goldstein2004]. Empirical distributions can show power-law behavior at values above some lower bound (Xmin), which can be estimated by maximizing the Kolmogorov-Smirnov (KS) statistic comparing empirical to fitted cumulative distribution function [@Clauset2009].  Since we hypothesize the presence of two power-laws first we determined Xmin using the complete dataset for each year and fitted the models, then we fitted again the four models for the data lower than Xmin. As a comparison we also fit the models with the complete dataset (Xmin=1). The use of Xmin eliminates part of the data from the analysis thus only models with a similar cut-off can be compared. 

The corrected Akaike Information Criteria (AICc) and the Akaike weights were computed for each model (Burnham & Anderson 2002). Akaike weights (wi) are the weight of  evidence in favor of model i being the actual best model for the situation at hand given that one of the N models must be the best model for that set of N models. 


Additionally, we computed the goodness of fit of the power-law and power-law with cut-off models following the bootstrap approach described by Clauset et. al [-@Clauset2009], where simulated data sets following the fitted model are generated, and a p-value equal to the proportion of simulated data sets that has a KS statistic less extreme than empirical data. 

A randomization procedure was applied in order to determine whether the distribution of contiguous forest units can be simply the result of a completely random process. The land pixels of the original image where randomly relocated while keeping watered areas untouched. The randomization process was repeated 1000 times, and the resulting binary images were subsequently subjected to the described procedure. 

Image processing were done in MATLAB. All statistical analyses were done using the GNU R [@RCoreTeam2015] , using the poweRlaw package [@Gillespie2015] for fitting distributions.




## Results

## References
