# Analysis of critical transitions at the Global Forest

## Abstract

One of the most important changes produced in the biosphere is the replacement of forest areas with human dominated landscapes. These areas contain much less species that the natural ecosystem they replaced, and are one the main drivers of extinctions in the anthropocene. The forest cover is also coupled to atmospheric dynamics and the balance of gases in the atmosphere. The dynamics of forest fragments or patches is central to its function as ecosystem.  In different kinds of vegetation including forests the patch size distributions follow power laws or approximate power law, but all these patterns have been observed at relatively small scales. Here we studied the distribution of forest patch sizes at a global level and its changes in the last fourteen years. We hypothesize that the global forest patches should follow a power law distribution. Power laws are a signal of critical phase transitions, where the system changes suddenly of state at a critical point, in the case of forest patches this change implies an abrupt change in the connectivity that pose a risk on the functioning of forest as an habitat and as an ecosystem. Thus we calculate the distance of the global forest to a possible critical point as an early warning indicator.     


## Introduction

Forest is one of the most important ecosystems on earth providing habitat for a large proportion of species and contributing extensively to global biodiversity [@Crowther2015a]. In the previous century human activities have reached the global scale changing influecing the bio-geochemical cicles [CITA]. One of the most dramatic human induced changes is the replacement of 40% of Earth’s formerly biodiverse land areas with landscapes that contain only a few species of crop plants, domestic animals and humans [@Foley2011] this is a global scale forcing. 

One of the main causes of biodiversity loss is habitat destruction or degradation that in turn leads to fragmentation: Fragmentation is defined as the division of a continous habitat into separated portions that are smaller and more isolated. These habitat fragments are embedded in a matrix of antropogenic land uses [@Haddad2015].  

Complex interaction between species and feedbacks at different levels of organization [@Gilman2010] can produce abrupt changes called critical transitions [@Scheffer2009]. These produce abrupt state shifts that can not be linearly forecasted from past changes [@Scheffer2009]. Critical transitions had been detected mostly at local scales [@Carpenter2011; @Drake2010], but the accumulation of changes in local communities that overlap geographically can propagate and cause an abrut change of the entire system [@Barnosky2012], thus there exist a possibility that a critical transition occurs at a global scale [@Rockstrom2009; @Folke2011].  


Science search for universal principles [@Marquet2005; @Harte2014], and one of these universal principles are scaling laws, These scaling laws are a of the nonequilibrium conditions under which structures at different levels are created and how large-scale patterns are generated from local interactions.

Power laws are asociated with two properties: scale invariance and universality [@Marquet2005]

Most patterns in biological and ecological systems are produced by the agregation of many small processes, thus the logical expectation is that they result in a Gaussian probability distribution according to the central limit theorem [@Frank2009]. Thus the finding that patch distribution follows a scale-free power law distribution is surprising, if the small scale process are in fact correlated we also obtain a Gausian distribution, so we need more than correlation to obtain the scale free distribution. 

Both habitat fragmentation and population fragmentation are critical transitions. Tuning a control parameter we can find a critical value (hc or lc) at which the order parameter (P or n ) declines abruptly to zero, the conbination of both procesess is also a critical system only if fragmentation is a dynamical proces, that means that degraded patches can recover [@Oborny2007].

A random forest would have new exponential distribution unless is close to a critical state.

Besides in several systems the observation of power laws in the patch distribution is a signal of a sistem in a critical state, undergoing a critical transition, in several ecosystems the distribution of vegetation patches present a power law distribution in a healthy state. Deviation of the power law are observed when pressures like overgrazing and desertification increase. 

Our objetive is to evaluate the forest patch distribution at a continental scale, to detect possible signals of a global critical transition. 


* Why distribution of patches is important

One way to detect a global shift is to track power law distributions in forest patches 



## Methods

* MODIS VCF short explanation <https://lpdaac.usgs.gov/dataset_discovery/modis/modis_products_table/mod44b>.

We choose mainland zones at a continental scale to analyze based in the posibility of connection, close patches of continous forest must connect the region, big islands like Madagascar were included as a separate regions, smaller islands where not included, we considered big islands connected to the mainland when they are at 1 km or less distance away. With this criteria we defined three regions in America, one corresponding to South America temperate forest (SAT), another to subtropical and tropical forest up to Mexico (SAST), and the last covering USA and Canada forest (NA). Europe and north Asia were all connected and they are included in one region (EUS), the other regions are south Asia (SAS), Africa (AF), and Oceania (OC) that includes only australia (Appendix figure S1).      

There are several definition of forest but we choose [@Sexton2015] A 30% threshold was used to convert the percentage tree cover to a binary image of forest and non-forest pixels [@Haddad2015]. Patches of contiguous forest were determined in the binary image by grouping connected pixels using a neighboorhood of 8 forest units (Moore neighborhood). We set a minimal patch size ($X_min$) at nine pixels to avoid artifacts at patch edges due to discretization. 

We fitted the empirical distribution of forest patch areas to four distributions using maximum likelihood estimation [@Goldstein2004;@Clauset2009]. The distributions were: power-law, power-law with exponential cut-off, log-normal, and exponential distributions. We assume that the patch size distribution is a continuous variable that was discretized by remote sensing data acquisition procedure. 

Besides the hard $X_{min}$ limit we set due to discretization, empirical distributions can show power-law behavior at values above a lower bound that can be estimated by maximizing the Kolmogorov-Smirnov (KS) statistic comparing empirical to fitted cumulative distribution function [@Clauset2009].  

The corrected Akaike Information Criteria ($AIC_c$) and the Akaike weights were computed for each model [@Burnham2002]. Akaike weights ($w_i$) are the weight of  evidence in favor of model $i$ being the actual best model for the situation at hand given that one of the $N$ models must be the best model for that set of N models. 

Additionally, we computed the goodness of fit of the power-law and power-law with cut-off models following the bootstrap approach described by Clauset et. al [-@Clauset2009], where simulated data sets following the fitted model are generated, and a p-value equal to the proportion of simulated data sets that has a KS statistic less extreme than empirical data. 

Image processing were done in MATLAB. All statistical analyses were done using the GNU R [@RCoreTeam2015] , using R code provided by Cosma R. Shalizi for power law with exponential cutoff model and the poweRlaw package [@Gillespie2015] for fitting the other distributions.


To measure the distance to the critical point we estimate the correlation length, [define the correlation length] 

* Estimation of the linear length of each region to compare with correlation length.


## Results


## Discussion

What are the consecuences of each distribution see [@VanRooij2013].

## References
