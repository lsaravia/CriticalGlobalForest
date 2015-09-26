# Analysis of critical transitions at the Global Forest

## Abstract

Detecting a global scale state shift

## Introduction

Ecosystems change in response to environmental changes, at a global scale these changes are being produced by human activities. The changes may be seen as gradual and can be forecasted by projecting recent trends but complex interaction between species and feedbacks at different levels of organization [@Gilman2010] can produce abrupt changes called critical transitions [@Scheffer2009].  This may give the false impression that ecosystems are resilient to changes because they respond with small changes to environmental pressures, but critical transitions pruduce and abrupt state shift, that can not be linearly forecasted from past changes [@Scheffer2009]. These critical transitions had been detected mostly at local scales   [@Carpenter2011; @Drake2010], but the accumulation of changes in local communities that overlap geographically can propagate and cause and produce and produce an abrut change of the entire system [@Barnosky2012], thus there exist a possibility that a critical transition occurs at a global scale 15–18.  

The importance of propagation of information and spatial dynamics -> study spatial signals power law distributions -> Why forest cover is important

 Global scale forcings as well as the replacement of .40% of Earth’s formerly biodiverse land areas with landscapes that contain only a few species of crop plants, domestic animals and humans3,40. 


* Why distribution of patches is important

One way to detect a global shift is to track power law distributions in forest patches 

## Methods

MODIS VCF explanation.

A 30% threshold was used to convert the percentage tree cover to a binary image of forest and non-forest pixels [@Haddad2015]. Patches of contiguous forest were determined in the binary image by grouping connected pixels using a neighboorhood of 8 forest units (Moore neighborhood). We set a minimal patch
size ($X_min$) at nine pixels to avoid artifacts at patch edges due to discretization. 

We fitted the empirical distribution of forest patch areas to four distributions using maximum likelihood estimation [@Goldstein2004;@Clauset2009]. The distributions were: power-law, power-law with exponential cut-off, log-normal, and exponential distributions. We assume that the patch size distribution a continuous variable that was discretized by remote sensing data acquisition procedure. CONSECUENCES OF EACH DISTRIBUTION VER [@VanRooij2013].

Besides the hard $X_min$ limit we set due to discretization, empirical distributions can show power-law behavior at values above a lower bound that can be estimated by maximizing the Kolmogorov-Smirnov (KS) statistic comparing empirical to fitted cumulative distribution function [@Clauset2009].  We first fitSince we hypothesize the presence of two power-laws first we determined Xmin using the complete dataset for each year and fitted the models, then we fitted again the four models for the data lower than Xmin. As a comparison we also fit the models with the complete dataset (Xmin=1). The use of Xmin eliminates part of the data from the analysis thus only models with a similar cut-off can be compared. 

The corrected Akaike Information Criteria (AICc) and the Akaike weights were computed for each model (Burnham & Anderson 2002). Akaike weights (wi) are the weight of  evidence in favor of model i being the actual best model for the situation at hand given that one of the N models must be the best model for that set of N models. 

Additionally, we computed the goodness of fit of the power-law and power-law with cut-off models following the bootstrap approach described by Clauset et. al [-@Clauset2009], where simulated data sets following the fitted model are generated, and a p-value equal to the proportion of simulated data sets that has a KS statistic less extreme than empirical data. 

A randomization procedure was applied in order to determine whether the distribution of contiguous forest units can be simply the result of a completely random process. The land pixels of the original image where randomly relocated while keeping watered areas untouched. The randomization process was repeated 1000 times, and the resulting binary images were subsequently subjected to the described procedure. 

Image processing were done in MATLAB. All statistical analyses were done using the GNU R [@RCoreTeam2015] , using the poweRlaw package [@Gillespie2015] for fitting distributions.




## Results

## References
