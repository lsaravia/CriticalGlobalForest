# Analysis of critical transitions at the Global Forest

## Abstract


## Methods

A 30% threshold was used to convert the percentage tree cover to a binary image of forest and non-forest pixels [@Haddad2015]. Contiguous forest units were determined in the binary image by grouping connected forest pixels, and area in each forest unit. 

We fitted the empirical distribution of forest units area a power-law or  power-law with cut-off, log-normal, exponential and Poisson distributions, using maximum likelihood estimation (Goldstein et al. 2004). Empirical distributions can show power-law behavior at values above some lower bound, which can be estimated by maximizing the Kolmogorov-Smirnov (KS) statistic comparing empirical to fitted cumulative distribution function [@Clauset2009].  Since the use of a cut-off eliminates part of the data from the analysis, only models with a similar cut-off can be compared. We thus fitted two sets of model: with no cut-off, and with the cut-off estimated in the power-law. The corrected Akaike Information Criteria (AICc) and the Akaike weights were computed for each model (Burnham & Anderson 2002) .

Additionally, we computed the goodness of fit of the power-law and power-law with cut-off models following the bootstrap approach described by Clauset et. al [-@Clauset2009], where simulated data sets following the fitted model are generated, and a p-value equal to the proportion of simulated data sets that has a KS statistic less extreme than empirical data. 

A randomization procedure was applied in order to determine whether the distribution of contiguous forest units can be simply the result of a completely random process. The land pixels of the original image where randomly relocated while keeping watered areas untouched. The randomization process was repeated 1000 times, and the resulting binary images were subsequently subjected to the described procedure. 

Image processing were done in MATLAB. All statistical analyses were done using the GNU R (R Core Team 2015), using the poweRlaw package (Gillespie 2015) for fitting distributions.
