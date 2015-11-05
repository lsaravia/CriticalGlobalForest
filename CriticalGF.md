# Analysis of critical transitions at the Global Forest

## Abstract

Detecting a global scale state shift

## Introduction

Ecologists must search for universal principles [@Harte2014], and one of these universal principles are scaling laws, These scaling laws are a signal of the nonequilibrium conditions under which structures at different levels are created and how large-scale patterns are generated from local interactions.

Ecosystems change in response to environmental changes, at a global scale these changes are being produced by human activities. The changes may be seen as gradual and can be forecasted by projecting recent trends, this may give the false impression that ecosystems are resilient to changes because they respond with small changes to environmental pressures. Complex interaction between species and feedbacks at different levels of organization [@Gilman2010] can produce abrupt changes called critical transitions [@Scheffer2009]. These produce abrupt state shifts that can not be linearly forecasted from past changes [@Scheffer2009]. Critical transitions had been detected mostly at local scales [@Carpenter2011; @Drake2010], but the accumulation of changes in local communities that overlap geographically can propagate and cause an abrut change of the entire system [@Barnosky2012], thus there exist a possibility that a critical transition occurs at a global scale [@Rockstrom2009; @Folke2011].  

One of the most dramatic human induced changes is the replacement of 40% of Earth’s formerly biodiverse land areas with landscapes that contain only a few species of crop plants, domestic animals and humans [@Foley2011;] this is a global scale forcing.

Most patterns in biological and ecological systems are produced by the agregation of many small processes, thus the logical expectation is that they result in a Gaussian probability distribution according to the central limit theorem [@Frank2009]. Thus the finding that patch distribution follows a scale-free power law distribution is surprising, if the small scale process are in fact correlated we also obtain a Gausian distribution, so we need more than correlation to obtain the scale free distribution. 

The importance of propagation of information and spatial dynamics -> study spatial signals power law distributions -> Why forest cover is important

Power laws are asociated with two properties: scale invariance and universality [@Marquet2005]

Both habitat fragmentation and population fragmentation are critical transitions. Tuning a control parameter we can find a critical value (hc or lc) at which the order parameter (P or n ) declines abruptly to zero, the conbination of both procesess is also a critical system only if fragmentation is a dynamical proces, that means that degraded patches can recover [@Oborny2007].


Besides in several systems the observation of power laws in the patch distribution is a signal of a sistem in a critical state, undergoing a critical transition, in several ecosystems the distribution of vegetation patches present a power law distribution in a healthy state. Deviation of the power law are observed when pressures like overgrazing and desertification increase. 

Our objetive is to evaluate the forest patch distribution at a continental scale, to detect possible signals of a global critical transition. 


* Why distribution of patches is important

One way to detect a global shift is to track power law distributions in forest patches 



## Methods

MODIS VCF explanation.

We choose mainland zones at a continental scale to analyze based in the posibility of connection, close patches of continous forest must connect the region, big islands like Madagascar were included as a separate regions, smaller islands where not included, we considered big islands connected to the mainland when they are at 1 km or less distance away. With this criteria we defined three regions in America, one corresponding to South America temperate forest (SAT), another to subtropical and tropical forest up to Mexico (SAST), and the last covering USA and Canada forest (NA). Europe and north Asia were all connected and they are included in one region (EUS), the other regions are south Asia (SAS), Africa (AF), and Oceania (OC) that includes only australia (Appendix figure S1).      

There are several definition of forest bu we choose [@Sexton2015] A 30% threshold was used to convert the percentage tree cover to a binary image of forest and non-forest pixels [@Haddad2015]. Patches of contiguous forest were determined in the binary image by grouping connected pixels using a neighboorhood of 8 forest units (Moore neighborhood). We set a minimal patch
size ($X_min$) at nine pixels to avoid artifacts at patch edges due to discretization. 

We fitted the empirical distribution of forest patch areas to four distributions using maximum likelihood estimation [@Goldstein2004;@Clauset2009]. The distributions were: power-law, power-law with exponential cut-off, log-normal, and exponential distributions. We assume that the patch size distribution is a continuous variable that was discretized by remote sensing data acquisition procedure. CONSECUENCES OF EACH DISTRIBUTION VER [@VanRooij2013].

Besides the hard $X_min$ limit we set due to discretization, empirical distributions can show power-law behavior at values above a lower bound that can be estimated by maximizing the Kolmogorov-Smirnov (KS) statistic comparing empirical to fitted cumulative distribution function [@Clauset2009].  We first fitSince we hypothesize the presence of two power-laws first we determined Xmin using the complete dataset for each year and fitted the models, then we fitted again the four models for the data lower than Xmin. As a comparison we also fit the models with the complete dataset (Xmin=1). The use of Xmin eliminates part of the data from the analysis thus only models with a similar cut-off can be compared. 

The corrected Akaike Information Criteria (AICc) and the Akaike weights were computed for each model (Burnham & Anderson 2002). Akaike weights (wi) are the weight of  evidence in favor of model i being the actual best model for the situation at hand given that one of the N models must be the best model for that set of N models. 

Additionally, we computed the goodness of fit of the power-law and power-law with cut-off models following the bootstrap approach described by Clauset et. al [-@Clauset2009], where simulated data sets following the fitted model are generated, and a p-value equal to the proportion of simulated data sets that has a KS statistic less extreme than empirical data. 

A randomization procedure was applied in order to determine whether the distribution of contiguous forest units can be simply the result of a completely random process. The land pixels of the original image where randomly relocated while keeping watered areas untouched. The randomization process was repeated 1000 times, and the resulting binary images were subsequently subjected to the described procedure. 

Image processing were done in MATLAB. All statistical analyses were done using the GNU R [@RCoreTeam2015] , using the poweRlaw package [@Gillespie2015] for fitting distributions.


* Correlation length in the same order of the maximal linear length is a measure of conectivity,   

## Results

## References
